using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class SwimmerAgro : MonoBehaviour {

    public static Action PlayerDetectionAction;
    public static Action PlayerEscapeAction;

    void OnTriggerEnter() {
        print("playerfound");
        if (PlayerDetectionAction != null) { PlayerDetectionAction(); }
    }

    void OnTriggerExit() {
        print("playerEscaped");
        //if (PlayerEscapeAction != null) { PlayerEscapeAction(); }
    }

}
