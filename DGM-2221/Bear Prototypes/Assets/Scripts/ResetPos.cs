using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ResetPos : MonoBehaviour {

    private Vector3 startingPos;
    private Quaternion startingRot;

	void Start () {
        startingPos = transform.position;
        startingRot = transform.rotation;
        PlayerHealth.ResetAction += OnReset;
	}
	
	void OnReset () {
        transform.position = startingPos;
        transform.rotation = startingRot;
	}
}
