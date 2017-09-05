using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InteractionManager : MonoBehaviour {

    void OnTriggerEnter (){
        PlayerMoveInput.InteractAction += InteractCalled;
        //print("Interaction Trigger Entered");
    }

    void OnTriggerExit(){
        PlayerMoveInput.InteractAction -= InteractCalled;
        //print("Interaction Trigger Exited");
    }

    void InteractCalled() {
        //print("Interacting");
    }
}
