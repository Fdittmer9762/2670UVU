using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class PlayerHealth : MonoBehaviour {

    private float playerHealth, maxHealth = 1f; //may include default health
    private float deathDelay = 2f;
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
        if (DeathAction != null) { DeathAction(); }
        yield return new WaitForSeconds(deathDelay);
        if (ResetAction != null) { ResetAction(); }
    }
}
