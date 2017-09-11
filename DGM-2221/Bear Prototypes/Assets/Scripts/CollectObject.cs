using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class CollectObject : MonoBehaviour {

    public static Action<int> CollectAction;
    public int itemType;
    private GameObject currentGO;

    void Start() {
        //currentGO = GetComponent<GameObject>();
        //if (currentGO != null) { print("done got the object"); }
    }

    void OnTriggerEnter() {
        OnCollectAction();
    }

    void OnCollectAction() {
        if (CollectAction != null) {
            CollectAction(itemType);
        }
        //print(itemType + " :Collected");
        //currentGO.gameObject.SetActive(false); **bugs fix later**
        //disable Item (make it uncollectable)
    }
}
