using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TimedSpikes : MonoBehaviour {

    private float offset, cycleTime = 2f;
    private bool trapActive = false;

    void Start() {
        TrapManager.ActivateTrapsAction += OnActivateAction;
    }

    void OnActivateAction(bool _activate) {
        trapActive = _activate;
        if (trapActive) { StartCoroutine(CycleSpikes()); }
    }

    IEnumerator CycleSpikes() {
        yield return new WaitForSeconds(offset);
        while (trapActive) {
            yield return new WaitForSeconds(cycleTime);
            //fire animation that shoots up the spikes
            print("Stab");
        }
    }
}
