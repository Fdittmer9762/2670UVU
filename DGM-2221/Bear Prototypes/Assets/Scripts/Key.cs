using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class Key : MonoBehaviour {

    public static Action KeyAction;

    void OnTriggerEnter() {
        if (KeyAction != null) { KeyAction(); this.gameObject.SetActive(false); }
    }
}
