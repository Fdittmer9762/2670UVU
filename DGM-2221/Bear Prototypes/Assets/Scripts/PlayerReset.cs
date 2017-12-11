using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class PlayerReset : MonoBehaviour {

    private Vector3 startingPos;
    private Quaternion startingRot;

    void Start()
    {
        startingPos = transform.position;
        startingRot = transform.rotation;
        PlayerHealth.ResetAction += OnReset;
        Checkpoint.CheckpointReachedAction += OnCheckpoint;
        ButtonMethods.ClickResetAction += OnReset;
    }

    void OnCheckpoint(Vector3 newPos) {
        startingPos = newPos;
    }

    void OnCheckpoint(Vector3 newPos, Quaternion newRot) {
        startingPos = newPos;
        startingRot = newRot;
    }

    void OnReset()
    {
        transform.position = startingPos;
        transform.rotation = startingRot;
    }
}
