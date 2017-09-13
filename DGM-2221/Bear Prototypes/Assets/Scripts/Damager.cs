using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class Damager : MonoBehaviour {

    public static Action<float> DamageAction;
    public float damageToPlayer = 1f;

    void OnTriggerEnter() {
        if(DamageAction != null){
            DamageAction(damageToPlayer);
        }
    }

}
