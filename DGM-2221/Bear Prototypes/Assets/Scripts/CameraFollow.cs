using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraFollow : MonoBehaviour {

    float smoothSpeed = 0.125f;
    public Vector3 cameraOffset;

	void Start () {
        PlayerMovement.PlayerLocationAction += FollowTarget;
        ChangeCameraOffset.ChangeCameraOffsetAction += OnNewCameraPos;
	}

    void FollowTarget(Vector3 targetPos) {
        Vector3 desiredPos = targetPos + cameraOffset;
        Vector3 smoothedPos = Vector3.Lerp(transform.position, desiredPos, smoothSpeed);
        transform.position = smoothedPos;
        transform.LookAt(targetPos);
    }

    void OnNewCameraPos(Vector3 newOffset, float camSpeed) {
        StartCoroutine(UpdateCameraOffset(cameraOffset,newOffset, camSpeed));
    }

    IEnumerator UpdateCameraOffset(Vector3 currentOffset, Vector3 newOffset, float camSpeed) {
        float travelDist = 0f;
        while (travelDist <= 1f) {
            travelDist += Time.deltaTime* camSpeed;
            cameraOffset = Vector3.Lerp(currentOffset, newOffset, travelDist);
            print("Camera reorientating" + travelDist);
            yield return null;
        }
    }
}
