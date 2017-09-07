using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FallingTree : MonoBehaviour {

    public float felledAngle;                                                   //publicly difined float that holds the angle that the tree will fall after pushed
    private float fallSpeed = 30f;
    protected float fallTime;
    float percentFallen;

    Vector3 rotValue;
    Quaternion myRotate;

    void OnTriggerEnter() {
        print("press c to push over");
        ControlManager.ActivateAction += Timber;
    }

    void OnTriggerExit() {
        print("well you can't knock over a tree from over there now can you.");
        ControlManager.ActivateAction -= Timber;
    }

    void Timber() {
        StartCoroutine(TreeFalls());
    }

    IEnumerator TreeFalls () {
        fallTime = felledAngle / fallSpeed;
        if (felledAngle != transform.rotation.z) {
            while (rotValue.z < felledAngle) {
                percentFallen += (1 / fallTime) * Time.deltaTime;
                print("current angle: " + rotValue.z);
                rotValue.z = Mathf.Lerp(0, felledAngle, percentFallen);
                myRotate.z = rotValue.z;
                transform.rotation = myRotate;// ********this is where the issue is!!!!!!!!*********
                //*****Having issues getting and setting correct values from transform.rotation*****
                print("Actual angle: " + transform.rotation.z);
                yield return null;
            }
        }
        print("Crash!!!!!");
    }
}
