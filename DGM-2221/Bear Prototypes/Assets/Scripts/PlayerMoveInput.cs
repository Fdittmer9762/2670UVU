using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class PlayerMoveInput : MonoBehaviour {

    public static Action<float> HorizontalInput;
	
	void Update () {
        MoveInput();
	}

    void MoveInput() {
        if (HorizontalInput != null) {
            HorizontalInput(Input.GetAxis("Horizontal"));
        }
    }
}
