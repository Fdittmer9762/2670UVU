﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class PlayerMovement : MonoBehaviour {

    public CharacterController playerCC;                                                        //Player Object Character Controler
    float speed = 5f;                                                                           //the speed that the character moves through the level
    public static float gravity = .5f;                                                          //the force of gravity applied to the player
    private float playerGravity;
    public float jumpForce = .2f;                                                               //force applied in the y axis when the player jumps
    private float speedDamper= 1f;
    private bool canSprint = true, sprinting = false;
    private float stamina = 3f, maxStamina;
    private bool grabbedObject = false;
    Vector3 tempPos;                                                                            //used by CC.Move(); to move the character

    float offsetX;                                                                              //the magnitude of the x offset, used to maintain overall speed of 5 with respect to angle
    float offsetZ;                                                                              //the magnitude of the y offset, ""

    private int JumpCount = 0;                                                                  //for Jump Limit 
    private int JumpLimit = 1;                                                                  //for Jump Limit 

    public static Action<Vector3> PlayerLocationAction;                                         //Action used to pass player location to 
    public static Action<Vector3> DeltaPlayer;                                                  //Action used to pass the players vector (how much he has moved since the last frame)
    public static Action PlayerAction;                                                          //Action used to call platform sticking (PlatformMovementTracking.OnPlayerMovementEvent)

    void Start()
    {
        playerCC = GetComponent<CharacterController>();                                         //sets the ref for the character controller
        ControlManager.EnableDefaultControls += OnDefaultControls;                              //Listens for the event to enable the scripts
        Swimming.SwimmingAction += OnSwimming;
        playerGravity = gravity;
        maxStamina = stamina;
    }

    void OnDefaultControls() 
    {
        if (grabbedObject == false) { PlayerMoveInput.HorizontalInput += Movement; }                                             //enables movement (possibly make its own method for easier reuse) **don't over complicate things early**
        grabbedObject = false;
        PlayerMoveInput.JumpAction += Jump;                                                     //enables jumping  (possibly make its own method for easier reuse)
        Orientator.OrientAction += MovementOffsetSet;                                           //listens to the orientator for the action call
        PlatformMovementTracking.MovePlayerEvent += OffsetPlayerPos;                            //listens to the platform movement tracking to find how much the current platform has moved
        offsetX = speed;                                                                        //prevents issues with the x offset **** first platform must be at 0 degrees y axis
        ControlManager.EnableDefaultControls -= OnDefaultControls;                              //UnSubs from the play action button to prevent it from subbing multiple times
        ControlManager.EnableFishingControls += OnFishing;                                      //Allows for transition to fishing control scheme
        ControlManager.EnableGrabControls += OnGrab;                                            //Allows for transition to Grab control scheme
        Ladder.AttachAction += OnLadderGrab;
        PlayerMoveInput.VerticalInputAction -= Climb;
        PlayerMoveInput.SprintAction = OnSprint;
    }

    void OnFishing() {
        PlayerMoveInput.HorizontalInput -= Movement;                                            //disables Walking
        PlayerMoveInput.JumpAction -= Jump;                                                     //disables Jumping
        Orientator.OrientAction -= MovementOffsetSet;                                           //unsubs from orient action; Just in case
        PlatformMovementTracking.MovePlayerEvent -= OffsetPlayerPos;                            // **may want to enable** could fish from a moving platform (disabled now just in case)
        ControlManager.EnableFishingControls -= OnFishing;                                      //unsubs from enable fishing controls, prevents issues
        ControlManager.EnableGrabControls -= OnGrab;                                            //prevents player from grabbing something while fishing
        ControlManager.EnableDefaultControls += OnDefaultControls;                              //subs to default control change
        Ladder.AttachAction -= OnLadderGrab;
        StartCoroutine(OnMovementDisable());                                                   //Call when movement is disabled **allows camera to smooth into place (looks better)**
    }

    void OnGrab (){
        grabbedObject = true;
        //PlayerMoveInput.HorizontalInput += Movement;//**may cause issues**
        PlayerMoveInput.JumpAction -= Jump;
        Orientator.OrientAction += MovementOffsetSet;                                           //unsubs from orient action; Just in case
        //PlatformMovementTracking.MovePlayerEvent -= OffsetPlayerPos;                            // **may want to enable** could push from a moving platform (disabled now just in case)
        ControlManager.EnableGrabControls -= OnGrab;
        ControlManager.EnableFishingControls -= OnFishing;
        Ladder.AttachAction -= OnLadderGrab;
        ControlManager.EnableDefaultControls += OnDefaultControls;
    }

    void OnLadderGrab() {
        print("ladder grabbed");
        PlayerMoveInput.HorizontalInput -= Movement;
        PlayerMoveInput.VerticalInputAction += Climb;
        //sub to vertical movement
        ControlManager.EnableGrabControls -= OnGrab;
        ControlManager.EnableFishingControls -= OnFishing;
        Ladder.AttachAction -= OnLadderGrab;
        ControlManager.EnableDefaultControls += OnDefaultControls;
        tempPos.x = 0f;
        tempPos.z = 0f;
        JumpCount = 0;
    }

    void OnSprint(bool _isSprinting) {
        sprinting = _isSprinting;
        if (_isSprinting && canSprint) { StartCoroutine(Sprint()); }
    }

    IEnumerator Sprint() {
        speedDamper *= 1.5f;
        canSprint = false;
        while (sprinting) {
            yield return null;
            stamina -= Time.deltaTime;
            //print(stamina + " :stamina");
            if (stamina <= 0f) {
                sprinting = false;
                PlayerMoveInput.SprintAction -= OnSprint;
            }
        }
        speedDamper /= 1.5f;
        yield return new WaitForSeconds(maxStamina - stamina);
        stamina = maxStamina;
        PlayerMoveInput.SprintAction += OnSprint;
        canSprint = true;
        print("stamina reset");
    }

    void OnSwimming() {                                                                         //Alters movement when the player enters the water
        tempPos.y = 0f;                                                                         //Stops the player from falling when it enters the water
        JumpLimit = 10000;                                                                      //Allows the player to jump forever
        JumpCount = 0;                                                                          //resets the jump count
        playerGravity = .05f;                                                                   //makes the player float in water not sink (gravity / 10f)
        jumpForce = playerGravity *.8f;                                                         //calculates the jump force using 
        speedDamper *= .5f;                                                                      //slows the player down
        Swimming.SwimmingAction -= OnSwimming;                                                  //prevents this method from being called again
        Swimming.SwimmingAction += OnSwimmingDisable;                                           //allows the player to add the object
    }

    void OnSwimmingDisable() {                                                                  //Alters movement when the player exits the water
        tempPos.y *= 2f;                                                                         //prevents the player from flying out of the water
        JumpLimit = 1;                                                                          //resets the jump count
        JumpCount = 1;                                                                          //resets the jump limit
        playerGravity = gravity;                                                                //resets the player gravity
        jumpForce = playerGravity * .4f;                                                        //resets teh players jump force
        speedDamper *= 2f;                                                                       //resets the players speed damper
        Swimming.SwimmingAction -= OnSwimmingDisable;                                           //prevents method from being called again
        Swimming.SwimmingAction += OnSwimming;                                                  //allows the player to enter the water again
    }

    void Movement(float obj){
        ApplyGravity();                                                                         //Calls the method to apply gravity
        PlayerActionCall();                                                                     //moves the player so that it stays on top of the current platform
        tempPos.x = obj * offsetX * speedDamper * Time.deltaTime;                               //sets the amount that the player needs to move in the x direction and applies any changes to speed with the damper
        tempPos.z = obj * offsetZ * speedDamper * Time.deltaTime;                               //sets the amount that the player needs to move in the z direction
        DeltaPlayerCall(tempPos);                                                               //Passes the movement data to the pushed object (MoveWithPlayer)
        playerCC.Move(tempPos);                                                                 //moves the player by the tempPos Vector3
        PassLocation();                                                                         //passes player location to other scripts
    }

    void MovementOffsetSet(float offset){                                                       //uses the passed offset angle and the player speed to set the x and z offsets
        offset *= Mathf.Deg2Rad;                                                                //convert the offset angle from rad to deg
        offsetX = Mathf.Cos(offset) * speed;                                                    //calculates the x offset
        offsetZ = Mathf.Tan(offset) * offsetX;                                                  //calculates the z offset
        //offsetZ = Mathf.Sin(offset) * speed;                                                    //alternate way to calculate the z axis
        //print("X: " + offsetX + " Y: " + offsetZ);                                              //For Debugging
    }

    void ApplyGravity() {                                                                       //Applys Gravity to Object when called using character controller
        if (playerCC.isGrounded != true){
            tempPos.y -= playerGravity * Time.deltaTime;                                                  //decrements from tempPos.y using force of gravity
        }
    }

    void Climb(float obj) {
        tempPos.y = obj * .5f * speed * Time.deltaTime;
        playerCC.Move(tempPos);
        PassLocation();
    }

    void Jump() {                                                                               //For Double Jump
        if (playerCC.isGrounded) {                                                              
            JumpCount = 0;
            //tempPos.y = 0;
            //print(JumpCount);                                                                   //testing
        }
        if (JumpCount <= JumpLimit) {
            tempPos.y = jumpForce;
            JumpCount++;
            //print("Jumping!");                                                                  //testing
        }
        //print("Jump Called!");                                                                  //testing
    }

    /*void Jump()                                                                               //One Jump Only
    {
        if (playerCC.isGrounded) {
            tempPos.y = jumpForce;
            //print("Jump!");
        }
    }*/

    void PassLocation(){                                                                        //passes player location data to other scripts
        if (PlayerLocationAction != null) {                                                     //prevents null call errors
            PlayerLocationAction(transform.position);                                           //passes the players location
        }
    }

    void DeltaPlayerCall(Vector3 tempVal) {
        if (DeltaPlayer != null) {
            DeltaPlayer(tempVal);
        }
    }

    void PlayerActionCall() {                                                                   //used for anything that needs to interact with the character each frame
        if (PlayerAction != null) {
            PlayerAction();                                                                     //calls action for anything that is listining (called on update) ****currently used by PlatformMovementTracking
        }
    }

    void OffsetPlayerPos(Vector3 offset) {                                                      //used to move the character with the currentl platform (keeps it attached to the platform)
        playerCC.Move(-offset);                                                                 //moves player using the offset
    }

    IEnumerator OnMovementDisable() {
        for (int i = 0; i < 40; i++)
        {
            PassLocation();
            yield return null;
        }

    }
}
