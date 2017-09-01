using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MoveCharacter : MonoBehaviour {

    protected CharacterController cc;                       //creates a character controller to move the character **is protected for testing, change to private**
    protected float speed = 5;
    private Vector3 tempMove;

	void Start () {
        cc = GetComponent<CharacterController>();           //gets the charactercontroller from unitys hiearchy and sets it to cc (must be located on the same object)
        PlayButton.Play += OnPlayAction;
	}

    void OnPlayAction() {
        MovementInput.KeyAction += Move;                     //Creates a ref to the movement script and the KeyAction event
        PlayButton.Play -= OnPlayAction;
    }

    void Move(float _movement) {                            //recieves the horizontal input from the keyaction call
        tempMove.x = _movement * speed * Time.deltaTime;    //sets the tempMove to the moement(player input passed by the action), speed(), and delta time binds the speed to the second and not the frame
        cc.Move(tempMove);                                  //moves the character controller using the tempMove vector3
    }
}
