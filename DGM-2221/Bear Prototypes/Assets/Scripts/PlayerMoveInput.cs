using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class PlayerMoveInput : MonoBehaviour {

    public static Action<float> HorizontalInput;
    public static Action JumpAction;
    public static Action InteractAction;
    public static Action<float> VerticalInputAction;
    public static Action ThrowAction;
	
	void Update () {
        PlayerInput();
	}

    void PlayerInput() {
        VerticalInput();
        HorizontalInputMethod();
        JumpInput();
        InteractInput();
        ThrowInput();
        //PassLocation();
    }

    void HorizontalInputMethod() {
        if (HorizontalInput != null){
            HorizontalInput(Input.GetAxis("Horizontal"));
            //print("Horizontal Input Called");
        }
    }

    void VerticalInput() {
        if (VerticalInputAction != null) {
            VerticalInputAction(Input.GetAxis("Vertical"));
        }
    }

    void JumpInput() {
        if (Input.GetKeyDown(KeyCode.Space) && JumpAction != null) {
            JumpAction();
            //print("Jump Action Called");
        }
    }

    void InteractInput() {
        if (Input.GetKeyDown(KeyCode.C) && InteractAction != null) {
            InteractAction();
            //print("Interact called");
        }
        //print("Interact method called");
    }

    void ThrowInput() {
        if (Input.GetKeyDown(KeyCode.X) && ThrowAction != null) {
            ThrowAction();
        }
    }

}
