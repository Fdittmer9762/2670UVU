using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class Checkpoint : MonoBehaviour {

    public static Action<Vector3, Quaternion> CheckpointReachedAction;
    public static Action CheckpointAction;
    private Vector3 newResetPos;
    private Quaternion newResetRot;

    void Start() {
        newResetPos = transform.position;
    }

    void OnTriggerEnter() {
        if (CheckpointReachedAction != null) { CheckpointReachedAction(newResetPos, newResetRot); }
        if (CheckpointAction != null) { CheckpointAction(); }
    }
}
