using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class ControlManager : MonoBehaviour {

    public static Action EnableDefaultControls;

	void Start () {                                                 
        //EnableControl();                                            //enables default controls on startup (will be changed later)
        Invoke("EnableControl", .5f);
	}

    void EnableControl() {
        if (EnableDefaultControls!= null){
            EnableDefaultControls();                                    //Calls action to enable default controls (movement, jumping, ...)
        }
    }

}
