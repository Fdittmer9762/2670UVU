using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class ButtonMethods : MonoBehaviour {

    public static Action ClickResetAction;

    public void ResetButton() {
        if (ClickResetAction != null) { ClickResetAction(); }
    }

}
