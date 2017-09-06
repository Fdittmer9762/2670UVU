using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MoveWithCharacter : MonoBehaviour {

	// Use this for initialization
	void Start () {
        ControlManager.EnableGrabControls += Grab;
	}

    void Grab() {
        print("grab Object");
    }
}
