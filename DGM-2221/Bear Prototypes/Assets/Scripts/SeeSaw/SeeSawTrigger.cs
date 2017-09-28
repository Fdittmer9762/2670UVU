using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class SeeSawTrigger : MonoBehaviour {

    public static Action<float, int> MovePlatformAction;
    public int platformLabel;

    void OnTriggerEnter() {
        print("first");
        ObjectWeight.SendWeightAction += OnSendWeight;
    }

    void OnTriggerExit() {
        StartCoroutine(OnLeavePlatform());
    }

    IEnumerator OnLeavePlatform() {
        yield return new WaitForSeconds(.02f);
        if (MovePlatformAction != null) { ObjectWeight.SendWeightAction -= OnSendWeight; }
    }

    void OnSendWeight(float deltaWeight) {
        if (MovePlatformAction != null) { MovePlatformAction(deltaWeight, platformLabel); }
    }

}
