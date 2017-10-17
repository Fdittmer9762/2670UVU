using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class MoveWithCharacter : MonoBehaviour {

    public static Action CancelGrab;

    //protected CharacterController objCC; //may replace
    Vector3 moveVector;

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
        PlayerMovement.DeltaPlayer += MoveObject;
        print("grab Object");
    }

    void TwistObject(float offset) {
        ReleaseObject();//Temp fix
        //---not working Debug Later---//
        /*rotValue.y = offset;
        myRotate.eulerAngles = rotValue;
        transform.rotation = myRotate;*/
        //-----------------------------//
    }

    void MoveObject(Vector3 posDelta) {
        moveVector.x = posDelta.x;
        transform.Translate(moveVector);
    }

    void ReleaseObject() {
        if (CancelGrab != null) {
            CancelGrab();
            PlayerMoveInput.InteractAction -= ReleaseObject;
            Orientator.OrientAction -= TwistObject;
            PlayerMovement.DeltaPlayer -= MoveObject;
        }
    }

    IEnumerator ReleasePhysics() {
        yield return null;
    }
}
