using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class Orientator : MonoBehaviour {

    public float yOrientation;
    public static Action <float> OrientAction;
    public Transform objOrientation;

    /*private void Start() {
        obj = GetComponent<GameObject>();
    }*/

    private void OnTriggerEnter()
    {
        if (OrientAction != null) {
            //OrientAction(objOrientation.rotation.y);           //gameObject.rotation.y is giving me wierd numbers, nolinear scaling decimal. (unusable)
            OrientAction(yOrientation);                         //uses publicly defined float to sub for the nousable data above 
            //print(transform.rotation.y);
        }
    }
}
