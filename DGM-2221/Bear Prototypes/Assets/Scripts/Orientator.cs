using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class Orientator : MonoBehaviour {

    public float yOrientation;                                  //public float that should match gameobject.transform.rotation.y
    public static Action <float> OrientAction;
    
    private void OnTriggerEnter()                               //when player enters orientator object trigger
    {
        if (OrientAction != null) {                             //failsafe that prevents null calls
            OrientAction(yOrientation);                         //uses publicly defined float to sub for the nousable data above 
            //print(transform.rotation.y);
        }
    }
}
