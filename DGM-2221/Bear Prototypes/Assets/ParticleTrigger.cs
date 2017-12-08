using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ParticleTrigger : MonoBehaviour {

    public ParticleSystem pSystem;

    void OnTriggerEnter() {
        pSystem.Play(true);
    }


}
