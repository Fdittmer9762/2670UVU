using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class EventNuller : MonoBehaviour {

    public static Action NullActionsCall;

    void NullAllActions() {
        if (NullActionsCall != null) {
            NullActionsCall();
        }
    }

    public static void NullThisAction(Action _action) {
        _action = null;
    }

}
