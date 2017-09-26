using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class WaterFollow : MonoBehaviour {

    private float maxAgroDistance = 20f;
    public GameObject swimmer;
    private bool swimmerInWater;
    public float swimmerSpeed;
    private bool playerChaseable = false;

    void Start() {
        SwimmerAgro.PlayerDetectionAction += OnPlayerDetect;
        //swimmer = GetComponent<GameObject>();
    }

    void OnPlayerDetect() {
        SwimmerAgro.PlayerDetectionAction -= OnPlayerDetect;
        SwimmerAgro.PlayerEscapeAction += OnPlayerEscape;
        PlayerMovement.PlayerLocationAction += CompareDistance;
    }

    void OnPlayerEscape() {
        SwimmerAgro.PlayerEscapeAction -= OnPlayerEscape;
        SwimmerAgro.PlayerDetectionAction += OnPlayerDetect;
        if (playerChaseable) { PlayerMovement.PlayerLocationAction -= FollowPlayer; }
        //PlayerMovement.PlayerLocationAction -= FollowPlayer;
        playerChaseable = false;
    }

    void CompareDistance(Vector3 _targetPos) {
        if (Vector3.Distance(this.gameObject.transform.position, _targetPos) <= maxAgroDistance) {
            PlayerMovement.PlayerLocationAction += FollowPlayer;
            playerChaseable = true;
        }
        else { /*nothing*/ }
        PlayerMovement.PlayerLocationAction -= CompareDistance;
    }

    void FollowPlayer(Vector3 _targetPos) {
        swimmer.transform.LookAt(_targetPos);
        //translate forward
        if (swimmerInWater) { swimmer.transform.Translate(Vector3.forward* Time.deltaTime* swimmerSpeed); }
    }

    void OnTriggerEnter() {
        print("Water Entered");
        swimmerInWater = true;
    }

    void OnTriggerExit() {
        print("WaterExited");
        swimmerInWater = false;
    }
}
