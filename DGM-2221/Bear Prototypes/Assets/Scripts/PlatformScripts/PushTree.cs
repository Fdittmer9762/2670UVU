using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PushTree : MonoBehaviour {

    public Rigidbody trunkRB;

    void Start() {
        trunkRB = GetComponentInChildren<Rigidbody>();
    }

    void OnTriggerEnter(){
        print("press c to push over");
        ControlManager.ActivateAction += Timber;                                //Subs to Activate Action
    }

    void OnTriggerExit(){
        print("well you can't knock over a tree from over there now can you.");
        ControlManager.ActivateAction -= Timber;                                //unSubs to activate action
    }

    void Timber() {
        print("Timber");
        trunkRB.useGravity = true;
    }
}
