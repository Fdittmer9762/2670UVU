using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class PlayerMovement : MonoBehaviour {

    public CharacterController playerCC;
    float speed = 5f;
    public float gravity = .5f;
    public float jumpForce = .2f;
    Vector3 tempPos;

    float offsetX;
    float offsetZ;

    private int JumpCount = 0;                                                                  //for Jump Limit ****Remove Later*****
    private int JumpLimit = 1;                                                                  //for Jump Limit ****Remove Later*****

    public static Action<Vector3> PlayerLocationAction;
    public static Action PlayerAction;

    void Start()
    {
        playerCC = GetComponent<CharacterController>();
        ControlManager.EnableDefaultControls += OnPlayAction;                               
    }

    void OnPlayAction()//Enables Controls                                                       //**think of better name for enable default controls**
    {
        PlayerMoveInput.HorizontalInput += Movement;                                            //enables movement (possibly make its own method for easier reuse) **don't over complicate things early**
        PlayerMoveInput.JumpAction += Jump;                                                     //enables jumping  (possibly make its own method for easier reuse)
        Orientator.OrientAction += MovementOffsetSet;
        PlatformMovementTracking.MovePlayerEvent += OffsetPlayerPos;
        offsetX = speed;
        ControlManager.EnableDefaultControls -= OnPlayAction;
    }

    void Movement(float obj)
    {
        ApplyGravity();
        PlayerActionCall();
        tempPos.x = obj * offsetX * Time.deltaTime;     
        tempPos.z = obj * offsetZ * Time.deltaTime;
        playerCC.Move(tempPos);
        PassLocation(); //passes player location to other scripts
    }

    void MovementOffsetSet(float offset){
        offset *= Mathf.Deg2Rad;
        offsetX = Mathf.Cos(offset) * speed;
        offsetZ = Mathf.Tan(offset) * offsetX;
        //offsetZ = Mathf.Sin(offset) * speed;
        print("X: " + offsetX + " Y: " + offsetZ);
    }

    void ApplyGravity() {                                                                       //Applys Gravity to Object when called using character controller
        tempPos.y -= gravity * Time.deltaTime;
    }

    void Jump() {                                                                               //For Double Jump
        if (playerCC.isGrounded) {
            JumpCount = 0;
            tempPos.y = 0;
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

    void PassLocation()//passes player location data to other scripts
    {
        if (PlayerLocationAction != null)
        {
            PlayerLocationAction(transform.position);
        }
    }

    void PlayerActionCall() {//used for anything that needs to interact with the character each frame
        if (PlayerAction != null) {
            PlayerAction();//currently used trigger event on platform
        }
    }

    void OffsetPlayerPos(Vector3 offset) {
        playerCC.Move(-offset);
    }
}
