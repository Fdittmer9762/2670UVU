using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class AgroObject : MonoBehaviour {

    public static Action<GameObject, int> AddAgroObject;
    public static Action<GameObject> RemoveAgroObject;
    public int tastyScale = 0;

    void OnTriggerEnter() {
        EnterAgro();
    }

    void OnTriggerExit() {
        ExitAgro();
    }

    void OnDisable() {
        ExitAgro();
    }

    void EnterAgro() {
        if (AddAgroObject != null) { AddAgroObject(this.gameObject, tastyScale); }
    }

    void ExitAgro() {
        if (RemoveAgroObject != null) { RemoveAgroObject(this.gameObject); }
    }
}
