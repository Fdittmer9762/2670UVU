using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;
using UnityEngine.UI;

public class PlayerHealth : MonoBehaviour {

    private float playerHealth, maxHealth = 1f; //may include default health
    private float deathDelay = 2f;
    public static Action DeathAction;
    public static Action ResetAction;

    public Slider HealthSlider;
    public Image[] healthSliderUIComponents;
    public Color damageColor;


    void Start () {
        ResetPlayerHealth();
        Damager.DamageAction += OnDamage;
        OxygenMeter.asphyxiationAction += OnDamage; 
        Checkpoint.CheckpointAction += ResetPlayerHealth;
    }

    void OnDamage (float damValue) {
        playerHealth -= damValue;
        if (playerHealth <= 0f) {
            StartCoroutine(DelayAfterDeath());
        }
        SetHealthBar(playerHealth);
	}

    void ResetPlayerHealth (){
        playerHealth = maxHealth;
        SetHealthBar(playerHealth);
    }

    void SetHealthBar(float obj) {
        HealthSlider.value = obj;
        if (obj <= maxHealth / 2) {
            foreach (Image spt in healthSliderUIComponents){
                spt.color = Color.Lerp(Color.red, Color.white, obj * 2);
            }
        }
        else {
            foreach (Image spt in healthSliderUIComponents) {
                spt.color = Color.white;
            }
        }

    }

    IEnumerator DelayAfterDeath() {
        if (DeathAction != null) { DeathAction(); }
        yield return new WaitForSeconds(deathDelay);
        if (ResetAction != null) { ResetAction(); }
        ResetPlayerHealth();
    }
}
