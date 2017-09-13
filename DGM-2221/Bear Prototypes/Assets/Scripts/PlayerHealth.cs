using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class PlayerHealth : MonoBehaviour {

    private float playerHealth, maxHealth = 5f; //may include default health
    public static Action DeathAction;
    public static Action ResetAction;

	void Start () {
        playerHealth = maxHealth;
        Damager.DamageAction += OnDamage;
	}
	
	void OnDamage (float damValue) {
        playerHealth -= damValue;
        if (playerHealth <= 0f) {
            StartCoroutine(DelayAfterDeath());
        }
	}

    IEnumerator DelayAfterDeath() {

        yield return null;
    }
}
