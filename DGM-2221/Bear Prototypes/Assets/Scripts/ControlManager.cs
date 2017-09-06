using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class ControlManager : MonoBehaviour {

    public static Action EnableDefaultControls;
    public static Action EnableFishingControls;
    public static Action EnableGrabControls;
    public static Action ActivateAction;

	void Start () {                                                 
        //EnableControl();                                                //enables default controls on startup (will be changed later)
        Invoke("EnableControl", .5f);
        InteractionManager.InteractAction +=changeControls;
	}

    void EnableControl() {
        if (EnableDefaultControls!= null){
            EnableDefaultControls();                                    //Calls action to enable default controls (movement, jumping, ...)
        }
    }

    void EnableFishing() {
        print("Id like to fish");
        if (EnableFishingControls != null) {
            EnableFishingControls();
        }
        FishingManager.stopFishing += EnableControl;                    //subs to fishing script, when player stops playing game
    }

    void EnableGrab() {
        if (EnableGrabControls != null) {
            EnableGrabControls();
        }
    }

    void changeControls(int interactType){                              //(1. activate 2. grab 3.fishing)
        switch (interactType) {
            case 3:                                                     //----Fishing-----//
                EnableFishing();                                        //calls event to change controls on lisining scripts (PlayerMovemvement, )
                print("Fishing Called");
                break;
            case 2:                                                     //------Grab------//
                print("Grabbing Called");
                
                break;
            case 1:                                                     //----Activate----//
                print("Activate Called");
                break;
            default:                                                    //-----Default----//
                EnableControl();
                print("Default Called");
                break;
        }
    }

}
