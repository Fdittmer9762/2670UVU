using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FlipCharacter : MonoBehaviour {

    Quaternion myRotate;
    Vector3 rotValue;

	void Start () {
        MovementInput.KeyAction += Flip;            //**Remember to overide with inheritance**
	}

    void Flip(float obj) {
        if (obj > 0){                               //moving right
            rotValue.y = 0;                         //Turn Character
        }
        if (obj < 0){                               //moving left
            rotValue.y = 180;
        }
        myRotate.eulerAngles = rotValue;
        transform.rotation = myRotate;
    }

}
