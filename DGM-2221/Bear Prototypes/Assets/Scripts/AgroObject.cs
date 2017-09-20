using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class AgroObject : MonoBehaviour {

    public static Action<GameObject, int> AddAgroObject;
    public static Action<GameObject> RemoveAgroObject;
    public int tastyScale = 0;

    void OnTriggerEnter() {
        if (AddAgroObject != null) { AddAgroObject(this.gameObject,tastyScale); }
    }

    void OnTriggerExit() {
        if (RemoveAgroObject != null) { RemoveAgroObject(this.gameObject); }
    }
}
