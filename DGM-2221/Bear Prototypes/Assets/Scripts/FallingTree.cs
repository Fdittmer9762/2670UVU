using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FallingTree : MonoBehaviour {

    public float felledAngle;                                                   //publicly difined float that holds the angle that the tree will fall after pushed
    private float fallSpeed = 2f;                                               //the rate of acceleration for the falling (gravity) **still testing**
    protected float fallTime;                                                   //time to fall, calculated using felledAngle and fallSpeed
    float percentFallen;                                                        //used for lerping

    Vector3 rotValue;                                                           //temp var used to set transform
    Quaternion myRotate;                                                        //quaterion used to set the transform.rotate values

    void OnTriggerEnter() {
        //print("press c to push over");
        ControlManager.ActivateAction += Timber;                                //Subs to Activate Action
    }

    void OnTriggerExit() {
        //print("well you can't knock over a tree from over there now can you.");
        ControlManager.ActivateAction -= Timber;                                //unSubs to activate action
    }

    void Timber() {
        StartCoroutine(TreeFalls());                                            //Starts Coroutine to make tree fall
    }

    IEnumerator TreeFalls () {
        fallTime = felledAngle / fallSpeed;                                     //time = distance/velocity
        float tempAngle = 0;                                                    //float used for acceleration
            while (rotValue.z < felledAngle) {                                  //while you have not reached your destination, keep falling
                tempAngle += (1 / fallTime) * Time.deltaTime;                   //calculates the rate of acceleration and adjusts for framerate
                percentFallen += tempAngle;                                     //applys acceleration to the velocity
                rotValue.z = Mathf.Lerp(0, felledAngle, percentFallen);         //calculates the angle the tree needs to be at
                myRotate.z = rotValue.z;                                        
                print("current angle: " + myRotate.z);                          //***for debugging***
                myRotate.eulerAngles = rotValue;
                transform.rotation = myRotate;// ********this is where the issue is!!!!!!!!*********
                //*****Having issues getting and setting correct values from transform.rotation*****
                print("Actual angle: " + transform.rotation.z);                 //*debug*
                yield return null;                                              //waits unitil the next frame to loop through again
            }
        print("Crash!!!!!");                                                    //*debug*
    }
}
