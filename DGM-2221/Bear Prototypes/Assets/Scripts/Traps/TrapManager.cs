using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class TrapManager : MonoBehaviour {

    public static Action<bool> ActivateTrapsAction;

    void OnTriggerEnter() {
        if (ActivateTrapsAction != null) { ActivateTrapsAction(true); }
    }

    void OnTriggerExit() {
        if (ActivateTrapsAction != null) { ActivateTrapsAction(false); }
    }
}
