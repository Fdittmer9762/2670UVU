using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Mirror : MonoBehaviour {

    public GameObject lightRay;

    void Start() {
        lightRay = this.transform.GetChild(0).gameObject;
        PublicScripts.SetObjectActive(false, lightRay);
    }

    void OnTriggerEnter() {
        PublicScripts.SetObjectActive(true, lightRay);
    }

    void OnTriggerExit() {
        PublicScripts.SetObjectActive(false, lightRay);
    }
    
}
