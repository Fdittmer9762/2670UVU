using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TriggerAnim : MonoBehaviour {

    public Animator triggerAnim;

    void Start() {

    }

    void OnTriggerEnter() {
        triggerAnim.SetTrigger("Trigger");
    }
}
