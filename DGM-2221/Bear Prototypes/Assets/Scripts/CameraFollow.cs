using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraFollow : MonoBehaviour {

    float smoothSpeed = 0.125f;
    public Vector3 cameraOffset;

	// Use this for initialization
	void Start () {
        PlayerMovement.PlayerLocationAction += FollowTarget;
	}

    void FollowTarget(Vector3 targetPos) {
        Vector3 desiredPos = targetPos + cameraOffset;
        Vector3 smoothedPos = Vector3.Lerp(transform.position, desiredPos, smoothSpeed);
        transform.position = smoothedPos;
        //print(targetPos.x + ", " + targetPos.y + ", " + targetPos.z);
        transform.LookAt(targetPos);
    }
}
