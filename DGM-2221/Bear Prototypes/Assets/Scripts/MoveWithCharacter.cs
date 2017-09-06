using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class MoveWithCharacter : MonoBehaviour {

    public static Action CancelGrab;

    void OnTriggerEnter() {
        ControlManager.EnableGrabControls += Grab;
    }

    void OnTriggerExit(){
        ControlManager.EnableGrabControls -= Grab;
        ReleaseObject();
    }

    void Grab() {
        PlayerMoveInput.InteractAction += ReleaseObject;
        print("grab Object");
    }

    void ReleaseObject() {
        print("Let It Go!");
        if (CancelGrab != null) {
            CancelGrab();
            PlayerMoveInput.InteractAction -= ReleaseObject;
        }
    }
}
