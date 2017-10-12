using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraFollow : MonoBehaviour {

    float smoothSpeed = 0.125f;
    public Vector3 cameraOffset;
    private Vector3 averageTargetPos, targetPos;
    public List<Transform> cameraTargets;
    public Transform playerTransform; //set in inspector
    private bool camLerping = false;

	void Start () {
        PlayerMovement.PlayerLocationAction += FollowTarget;
        ChangeCameraOffset.ChangeCameraOffsetAction += OnNewCameraPos;
        CamTargetScript.NewCamTargetAction += OnNewTarget;
        cameraTargets = new List<Transform>();
        cameraTargets.Add(playerTransform);
	}

    void FollowTarget(Vector3 playerPos) { //avoid using targetPos
        if (!camLerping) { targetPos = FindAverage(); }
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
            travelDist += Time.deltaTime* (1/camSpeed);
            cameraOffset = Vector3.Lerp(currentOffset, newOffset, travelDist);
            //print("Camera reorientating" + travelDist);
            yield return null;
        }
    }

    void OnNewTarget(Transform _newTarget, bool shouldAdd, float _camSpeed) {
        StartCoroutine(NewCameraTarget(_newTarget, shouldAdd, _camSpeed));
    }

    IEnumerator NewCameraTarget(Transform _target, bool shouldAdd, float _camSpeed) {
        Vector3 oldPos = FindAverage();
        if (shouldAdd) {
            cameraTargets.Add(_target);
        }else{ RemoveTarget(_target); }
        camLerping = true;
        float travelDist = 0f;
        while (travelDist < 1f)
            {
            travelDist += Time.deltaTime * (1 / _camSpeed);
            targetPos = Vector3.Lerp(cameraTargets[0].position, FindAverage(), travelDist); //clean this shit up!!
            if (cameraTargets.Count <= 1) { targetPos = Vector3.Lerp(oldPos,cameraTargets[0].position, travelDist); }
            yield return null;
            }
            camLerping = false;
    }

    Vector3 FindAverage() {
        averageTargetPos = Vector3.zero;
        for (int i = 0; i < cameraTargets.Count; i++) {
            averageTargetPos += cameraTargets[i].position;
        }
        averageTargetPos /= cameraTargets.Count;
        return averageTargetPos;
    }

    void RemoveTarget(Transform targetGO) {
        if (cameraTargets.Count > 0){
            for (int i = 0; i < cameraTargets.Count; i++){
                if (targetGO == cameraTargets[i]){
                    cameraTargets.RemoveAt(i);
                }
            }
        }
        //remove target from list
    }
}
