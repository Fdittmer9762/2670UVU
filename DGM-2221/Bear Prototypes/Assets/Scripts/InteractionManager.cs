using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class InteractionManager : MonoBehaviour {                           //**place on interactable object**

    public int interactType = 0;                                          //(1. activate 2. grab 3.fishing) defines what kind of interaction will take place, set manually

    public static Action<int> InteractAction;                             //event that fires when object is interacted with

    void OnTriggerEnter (){
        PlayerMoveInput.InteractAction += InteractCalled;
        //print("Interaction Trigger Entered");
    }

    void OnTriggerExit(){
        PlayerMoveInput.InteractAction -= InteractCalled;
        //print("Interaction Trigger Exited");
    }

    void InteractCalled() {
        if (InteractAction != null) {
            InteractAction(interactType);
        }
        PlayerMoveInput.InteractAction -= InteractCalled;                   //prevents it from being called multiple times and causing issues *(trapping the player in the interaction box)
        //print("Interacting");
    }
}
