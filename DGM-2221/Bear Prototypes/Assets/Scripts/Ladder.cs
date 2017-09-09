using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class Ladder : MonoBehaviour {

    public static Action DetachAction;
    public static Action AttachAction;

    void OnTriggerEnter() {
        PlayerMoveInput.JumpAction += OnJump;
        if (AttachAction != null) {
            AttachAction();
        }
    }

    void OnTriggerExit() {
        PlayerMoveInput.JumpAction -= OnJump;
        
    }

    void OnJump() {
        print("Ladder Jump");
        if (DetachAction != null) {
            print("detaching");
            DetachAction();
        }
    }

}
