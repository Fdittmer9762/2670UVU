using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MoveWithCharacter : MonoBehaviour {

    // Use this for initialization

    void OnTriggerEnter() {
        PlayerMovement.GrabAction += Grab;
    }

    void OnTriggerExit()
    {
        PlayerMovement.GrabAction -= Grab;
    }

    void Grab() {
        print("grab Object");
        //maintain offset from player
    }
}
