using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class PlatformMovementTracking : MonoBehaviour {

    private Vector3 previousPos;
    public static Action<Vector3> MovePlayerEvent;

    void OnTriggerEnter(){
        PlayerMovement.PlayerAction += OnPlayerMovementEvent;
        previousPos = transform.position;//updates position on activation
    }
    void OnTriggerExit(){
        PlayerMovement.PlayerAction -= OnPlayerMovementEvent;
    }

    void OnPlayerMovementEvent() {
        //print("Player movement triggered");
        MovePlayerEvent (previousPos -transform.position);   //calculate difference between previous position and current position
        previousPos = transform.position; //update previous position
    }
}
