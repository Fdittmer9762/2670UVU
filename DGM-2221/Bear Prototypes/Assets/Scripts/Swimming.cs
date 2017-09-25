using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class Swimming : MonoBehaviour {

    public static Action SwimmingAction;

    void OnTriggerEnter() {
        Swim();
    }

    void OnTriggerExit() {
        Swim();
    }

    void Swim() {
        if (SwimmingAction != null) { SwimmingAction(); }
    }

}
