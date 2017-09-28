using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class ObjectWeight : MonoBehaviour {

    public static Action<float> SendWeightAction;

    public float weight;
    private float maxWeight = 4f;

    void OnTriggerEnter() {
        StartCoroutine(SendWeight(maxWeight - weight));
    }

    void OnTriggerExit() {
        //if (SendWeightAction != null) { SendWeightAction(weight * -1); }
    }

    IEnumerator SendWeight(float _weight) {
        yield return null;
        //yield return new WaitForSeconds(.02f);
        if (SendWeightAction != null) { SendWeightAction(_weight); print("next"); }
    }
}
