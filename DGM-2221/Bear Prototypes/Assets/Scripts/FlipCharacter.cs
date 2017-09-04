using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FlipCharacter : MonoBehaviour {

    Quaternion myRotate;
    Vector3 rotValue;
    public float orientationOffset;

    void Start()
    {
        ControlManager.EnableDefaultControls += OnPlayAction;
        Orientator.OrientAction += ReOrientate;
    }

    void OnPlayAction()
    {
        PlayerMoveInput.HorizontalInput += Flip;
        ControlManager.EnableDefaultControls += OnPlayAction;
    }

    void Flip(float obj)
    {
        if (obj > 0) {                              //moving right
            rotValue.y = orientationOffset;                         //Turn Character
        }
        if (obj < 0) {                              //moving left
            rotValue.y = 180 + orientationOffset;
        }
        myRotate.eulerAngles = rotValue;
        transform.rotation = myRotate;
    }

    void ReOrientate(float angle) {
        orientationOffset = angle;
        print("orientation angle : " + orientationOffset);
    }

}
