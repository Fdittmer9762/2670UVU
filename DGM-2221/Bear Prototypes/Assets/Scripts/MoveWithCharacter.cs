using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class MoveWithCharacter : MonoBehaviour {

    public static Action CancelGrab;

    Quaternion myRotate;
    Vector3 rotValue;


    void OnTriggerEnter() {
        ControlManager.EnableGrabControls += Grab;
    }

    void OnTriggerExit(){
        ControlManager.EnableGrabControls -= Grab;
        ReleaseObject();
    }

    void Grab() {
        PlayerMoveInput.InteractAction += ReleaseObject;
        Orientator.OrientAction += TwistObject;
        print("grab Object");
    }

    void TwistObject(float offset) {
        rotValue.y = offset;
        myRotate.eulerAngles = rotValue;
        transform.rotation = myRotate;
    }

    void ReleaseObject() {
        if (CancelGrab != null) {
            CancelGrab();
            PlayerMoveInput.InteractAction -= ReleaseObject;
            Orientator.OrientAction -= TwistObject;
        }
    }
}
