﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LockedDoor : MonoBehaviour {
    
    public float unlockDelay = .5f;
    private float doorSpeed = 1.2f, travelDist = 0f;
    public GameObject lockPos, unlockPos, door;

    void Start() {
        //Key.KeyAction += OnUnlock;
        door.transform.position = lockPos.transform.position;
    }

    void OnTriggerEnter() {
        Key.KeyAction += OnUnlock;
    }

    void OnTriggerExit() {
        Key.KeyAction -= OnUnlock;
    }

    void OnUnlock() {
        StartCoroutine(MoveDoor());
    }

    IEnumerator MoveDoor() {
        yield return new WaitForSeconds(unlockDelay);
        while (travelDist <= 1) {
            travelDist += doorSpeed * Time.deltaTime;
            door.transform.position = Vector3.Lerp(lockPos.transform.position, unlockPos.transform.position, travelDist);
            yield return null;
        }
    }
}
