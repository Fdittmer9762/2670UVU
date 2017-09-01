using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MoveCharacter : MonoBehaviour {

    protected CharacterController cc;                       //creates a character controller to move the character **is protected for testing, change to private**
    protected float speed = 5f;
    private float gravity = .5f;
    public float jumpForce = 200;
    private Vector3 tempMove;

	void Start () {
        cc = GetComponent<CharacterController>();           //gets the charactercontroller from unitys hiearchy and sets it to cc (must be located on the same object)
        PlayButton.Play += OnPlayAction;
	}

    void OnPlayAction() {
        MovementInput.KeyAction += Move;                     //Creates a ref to the movement script and the KeyAction event
        MovementInput.JumpAction += Jump;
        PlayButton.Play -= OnPlayAction;
    }

    void Jump() {
        print("Jump");
        tempMove.y = jumpForce;
        //Invoke("Jump",.001f );
    }

    void Move(float _movement) {                            //recieves the horizontal input from the keyaction call
        //GroundedTest();
        tempMove.y -= gravity * Time.deltaTime;                               //script controls gravity
        tempMove.x = _movement * speed * Time.deltaTime;    //sets the tempMove to the moement(player input passed by the action), speed(), and delta time binds the speed to the second and not the frame
        cc.Move(tempMove);                                  //moves the character controller using the tempMove vector3
        //tempMove.y = 0;
    }

    void GroundedTest() {
        if (cc.isGrounded){
            print("Grounded");
        }else {
            print("Not Grounded");
        }
    }
}
