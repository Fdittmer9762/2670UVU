using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class FishingManager : MonoBehaviour {

    public static Action stopFishing;

    void Start(){
        ControlManager.EnableFishingControls += StartFishing;
        print("Fishing Started");
    }

    void StartFishing() {
        PlayerMoveInput.InteractAction += StopFishing;
        print("Fishing Started");
    }

    void StopFishing() {
        print("Stop Fishing");
        if (stopFishing!= null) {
            stopFishing();
        }
    }


}
