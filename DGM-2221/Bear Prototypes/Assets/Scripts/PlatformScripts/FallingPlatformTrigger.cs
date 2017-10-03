using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class FallingPlatformTrigger : MonoBehaviour {

    private Transform platformPos;                      //ref to the platforms position

    public static Action<float> CollapseAction;

    private bool playerAttached = false;                //is the player on the block
    public float maxSupportTime = 1f;                  //the max time the block will hold the player before falling

    public float fallDistance = 20f;                   //the distance the block should fall before stopping
    private float distFallen;                           //the distance the block has already fallen
    private bool shouldFall;                            //bool used for a while loop to determine if it should continue to fall
    private float fallSpeed;                            //create float fall speed to be used in the next while loop


    void Start() {
        platformPos = GetComponent<Transform>();        //sets the reference to the platform
    }

    void OnTriggerEnter() {
        playerAttached = true;                          //when player enters the trigger they are attached
        StartCoroutine(Collapse());                     //start the falling process
    }

    void OnTriggerExit() {
        playerAttached = false;
    }

    IEnumerator Collapse() {
        float attachTime = 0;                                                           //sets the time the player has been attached
        if (CollapseAction != null) { CollapseAction(maxSupportTime); }                 //calls action
        while (playerAttached) {                                                        //while the player is attached
            if (attachTime <= maxSupportTime) { attachTime += Time.deltaTime; }         //if the player has been attached for less than the max time, incement the attched time counter
            else { playerAttached = false; }                                            //else, start falling
            yield return null;                                                          //wait for end of frame
        }
        shouldFall = true;                                                              //sets the bool for next while loop
        yield return new WaitForSeconds(Mathf.Abs(maxSupportTime - attachTime));        //in case the player left early, calculate the remaining time before fall and wait until it has passed before moving on
        while (shouldFall) {                                                            //while it should be falling... 
            fallSpeed += Time.deltaTime * PlayerMovement.gravity;                       //calculate the fall speed based on gravity ref and current frame rate
            distFallen += fallSpeed;                                                    //add to distance fallen
            platformPos.Translate(Vector3.down * fallSpeed);                            //move the platform down by the fall speed
            if (distFallen >= fallDistance) { shouldFall = false; }                     //if the platform has fallen farther than the max dis break out of while loop
            yield return null;                                                          //wait for next frame
        }
        distFallen = 0f;
        fallSpeed = 0f;
    }

}
