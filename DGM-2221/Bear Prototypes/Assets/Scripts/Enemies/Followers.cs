using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Followers : MonoBehaviour {

    private Transform followerPos;
    private float speed = 1;

    void Start() {
        followerPos = GetComponent<Transform>();
    }

    void OnTriggerEnter() {
        PlayerMovement.PlayerLocationAction += Follow;
    }

    void OnTriggerExit() {
        PlayerMovement.PlayerLocationAction -= Follow;
    }

    void Follow(Vector3 _targetPos) {
        followerPos.LookAt(_targetPos);
        followerPos.transform.Translate(Vector3.forward * Time.deltaTime * speed);
    }

}
