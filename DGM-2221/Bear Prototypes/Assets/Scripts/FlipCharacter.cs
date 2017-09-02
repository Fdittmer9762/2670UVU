using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FlipCharacter : MonoBehaviour {

    Quaternion myRotate;
    Vector3 rotValue;

    void Start()
    {
        ControlManager.EnableDefaultControls += OnPlayAction;
    }

    void OnPlayAction()
    {
        PlayerMoveInput.HorizontalInput += Flip;
        ControlManager.EnableDefaultControls += OnPlayAction;
    }

    void Flip(float obj)
    {
        if (obj > 0) {                              //moving right
            rotValue.y = 0;                         //Turn Character
        }
        if (obj < 0) {                              //moving left
            rotValue.y = 180;
        }
        myRotate.eulerAngles = rotValue;
        transform.rotation = myRotate;
    }

}
