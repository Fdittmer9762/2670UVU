using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class CollectObject : MonoBehaviour {

    public static Action<int> CollectAction;
    public int itemType;
    private GameObject currentGO;

    void OnTriggerEnter() {
        OnCollectAction();
    }

    void OnCollectAction() {
        if (CollectAction != null) {
            CollectAction(itemType);
            gameObject.SetActive(false);
        }
    }
}
