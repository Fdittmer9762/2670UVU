using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Transform))]
public class TimedSpikes : MonoBehaviour {

    public Transform spikes;
    private Vector3 extendedPos;
    public float offset, spikeSpeed, cycleTime = .5f;
    private float spikeTimer;
    private bool trapActive = false;

    void Start() {
        //spikes = GetComponentInChildren<Transform>();
        extendedPos = spikes.localPosition;
        spikes.localPosition = Vector3.zero;
        TrapManager.ActivateTrapsAction += OnActivateAction;

        OnActivateAction(true);
    }

    void OnActivateAction(bool _activate) {
        trapActive = _activate;
        if (trapActive) { StartCoroutine(CycleSpikes()); }
    }

    IEnumerator CycleSpikes() {
        yield return new WaitForSeconds(offset);
        while (trapActive) {
            while (spikeTimer < 1)
            {
                spikeTimer += (Time.deltaTime * (1/spikeSpeed));
                spikes.localPosition = Vector3.Lerp(Vector3.zero, extendedPos, spikeTimer);
                yield return null;
            }
            spikeTimer = 0f;
            while (spikeTimer < 1)
            {
                spikeTimer += (Time.deltaTime * (1 / cycleTime));
                spikes.localPosition = Vector3.Lerp(extendedPos, Vector3.zero, spikeTimer);
                yield return null;
            }
            spikeTimer = 0;
            yield return new WaitForSeconds(cycleTime);
        }
    }
}
