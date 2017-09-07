using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FlipCharacter : MonoBehaviour {

    Quaternion myRotate;
    Vector3 rotValue;
    protected float orientationOffset;

    void Start()
    {
        ControlManager.EnableDefaultControls += OnDefaultControls;
        Orientator.OrientAction += ReOrientate;
    }

    void OnDefaultControls(){
        PlayerMoveInput.HorizontalInput += Flip;                                                //Enables flipping of the character/Player gameobject
        ControlManager.EnableDefaultControls -= OnDefaultControls;                              //unsub from enable default controls, Prevents Issues with the control input
        ControlManager.EnableFishingControls += OnFishing;                                      //Subs to on fishing event call
        ControlManager.EnableGrabControls += OnFishing;
    }

    void OnFishing() {
        PlayerMoveInput.HorizontalInput -= Flip;                                                //Dosabes flip script, prevents player from flipping around
        ControlManager.EnableFishingControls -= OnFishing;                                      //unsub from the onfishing event call, prevents issues
        ControlManager.EnableDefaultControls += OnDefaultControls;                              //subs to the default controls call, allows default controlls to be enabled
        ControlManager.EnableGrabControls += OnGrab;
    }

    void OnGrab() {
        PlayerMoveInput.HorizontalInput -= Flip;
        ControlManager.EnableGrabControls -= OnGrab;
        ControlManager.EnableFishingControls += OnFishing;
        ControlManager.EnableDefaultControls += OnDefaultControls;
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
        //angle *= Mathf.Deg2Rad;
        orientationOffset = -angle;
        print("orientation angle : " + orientationOffset);
    }

}
