using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class MovementInput : MonoBehaviour {

    Action KeyAction;                                           //action used to move character controller

    private void Start()
    {
        KeyAction = Move;                                       //Assigns Move to Keyaction so when something calls for the keyaction event it will run the Move method
    }

    void Update () {
        MoveInput();                                            //runs Move Input Every Frame
    }

    void MoveInput() {                                          //checks for input
        if (Input.GetKey(KeyCode.LeftArrow))                    //Tests for input from left arrow key
        {
            KeyAction();                                        //Calls action KeyAction when 
        }
    }

    private void Move()
    {
        Debug.Log("Left Arrow");                                //for testing
    }
}
