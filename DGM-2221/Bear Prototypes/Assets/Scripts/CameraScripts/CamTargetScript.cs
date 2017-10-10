using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class CamTargetScript : MonoBehaviour {

    public static Action<Transform, bool, float> NewCamTargetAction;

    public Transform newCamTarget;                                                      //set in inspector, holds transform of new camera target
    public float cameraMoveTime;

    void ChangeCameraTarget(bool addTarget) {
        if (NewCamTargetAction != null) { NewCamTargetAction(newCamTarget, addTarget, cameraMoveTime); }
    }

    void OnTriggerEnter() {
        print(newCamTarget.position.x + " Has been sent");
        ChangeCameraTarget(true);
    }
    void OnTriggerExit() {
        ChangeCameraTarget(false);
    }
}
