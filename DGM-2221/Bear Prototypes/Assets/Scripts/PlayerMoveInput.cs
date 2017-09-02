using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class PlayerMoveInput : MonoBehaviour {

    public static Action<float> HorizontalInput;
    public static Action JumpAction;
	
	void Update () {
        PlayerInput();
	}

    void PlayerInput() {
        HorizontalInputMethod();
        JumpInput();
    }

    void HorizontalInputMethod() {
        if (HorizontalInput != null){
            HorizontalInput(Input.GetAxis("Horizontal"));
            //print("Horizontal Input Called");
        }
    }

    void JumpInput() {
        if (Input.GetKeyDown(KeyCode.Space) && JumpAction != null) {
            JumpAction();
            //print("Jump Action Called");
        }
    }
}
