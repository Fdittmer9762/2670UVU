using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;                                                       //Naemspace contains the event system: allows actions to work

public class MovementInput : MonoBehaviour {

    public static Action<float> KeyAction;                          //action used to move character controller

    void Update() {
        MoveInput();
    }

    void MoveInput() {                                              //checks for input
        if (KeyAction != null)                                      //Tests for input from left arrow key and calls the action KeyAction when true
        {
            KeyAction(Input.GetAxis("Horizontal"));                 //feeds the horizontal input into the action as a float
        }
    }
}
