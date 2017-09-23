using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class AgroObject : MonoBehaviour {

    public static Action<GameObject, string> AddAgroObject;
    public static Action<GameObject> RemoveAgroObject;

    public int objType; //0 honey, 1 fish, 2 berries, 3 boy
    protected string tastyScale;

    void Start() {
        SetObj();
    }

    void SetObj() {
        switch (objType) {
            case 0:
                tastyScale = "HoneyAgro";
                break;
            case 1:
                tastyScale = "FishAgro";
                break;
            case 2:
                tastyScale = "BerryAgro";
                break;
            case 3:
                tastyScale = "TastyGams";
                break;
            default:
                tastyScale = "TastyGams";
                break;
        }
        this.gameObject.name = tastyScale;
    }

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
