using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class ChangeCameraOffset : MonoBehaviour {

    public static Action<Vector3, float> ChangeCameraOffsetAction;

    public Vector3 newCameraOffset;
    public float cameraSpeed = .5f;

    void OnTriggerEnter() {
        if (ChangeCameraOffsetAction != null) { ChangeCameraOffsetAction(newCameraOffset, cameraSpeed); }
    }

}
