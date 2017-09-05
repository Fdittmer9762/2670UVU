using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class ControlManager : MonoBehaviour {

    public static Action EnableDefaultControls;

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

    void changeControls(int interactType){                              //(1. activate 2. grab 3.fishing)
        switch (interactType) {
            case 3:                                                     //----Fishing-----//
                print("Fishing Called");
                break;
            case 2:                                                     //------Grab------//
                print("Grabbing Called");
                break;
            case 1:                                                     //----Activate----//
                print("Activate Called");
                break;
            default:                                                    //-----Default----//
                EnableDefaultControls();
                print("Default Called");
                break;
        }
    }

}
