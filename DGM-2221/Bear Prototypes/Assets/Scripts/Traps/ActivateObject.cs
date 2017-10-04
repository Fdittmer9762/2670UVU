using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ActivateObject : MonoBehaviour {

    public GameObject objToActivate;

    void OnTriggerEnter() {
        //things to listen for (sub)
        PianoManager.PianoSolved += ActivateObj;
    }

    void OnTriggerExit() {
        PianoManager.PianoSolved -= ActivateObj;
    }

    void ActivateObj() {
        objToActivate.SetActive(true);
    }

}
