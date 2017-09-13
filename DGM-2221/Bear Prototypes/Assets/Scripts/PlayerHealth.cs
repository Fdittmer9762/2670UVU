using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class PlayerHealth : MonoBehaviour {

    private float playerHealth, maxHealth = 5f; //may include default health
    public static Action DeathAction;

	void Start () {
        playerHealth = maxHealth;
        Damager.DamageAction += OnDamage;
	}
	
	void OnDamage (float damValue) {
        playerHealth -= damValue;
        if (playerHealth <= 0f) {
            print("Life gives and it takes");
            if (DeathAction != null) { DeathAction(); }
        }
	}
}
