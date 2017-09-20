using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class AddAgroObject : MonoBehaviour {

    public static Action<GameObject, int> AddAgroObjectAction;
    public int tastyScale;

    void OnTriggerEnter() {
        print(tastyScale);
        if (AddAgroObjectAction != null) { AddAgroObjectAction(this.gameObject, 0); }
    }
}
