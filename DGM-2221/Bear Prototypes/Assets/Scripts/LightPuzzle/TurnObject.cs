using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TurnObject : MonoBehaviour {

    private Transform TurnableObject;
    private float rotSpeed = 15f;

    void Start() {
        TurnableObject = this.transform.GetChild(0).transform;
    }

    void OnTriggerEnter() {
        PlayerMoveInput.VerticalInputAction += RotateObject;
    }

    void RotateObject(float _rotValue) {
        TurnableObject.transform.Rotate( Vector3.forward * Time.deltaTime *_rotValue *rotSpeed);
    }

}
