using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System;

public class OxygenMeter : MonoBehaviour {

    private bool swimming;
    public float maxO2 =1, currentO2;
    public Slider oxygenMeter;
    public Image[] meterComponents;

    public static Action<float> asphyxiationAction;

    void Start () {
        Swimming.SwimmingAction += HoldBreath;
        PlayerHealth.DeathAction += ResetOxygen;
        ResetOxygen();
    }

    void HoldBreath() {
        if (!swimming) {
            swimming = true;
            StartCoroutine(O2Meter());
        }else {
            swimming = false;
            ResetOxygen();
        }
    }

    IEnumerator O2Meter() {
        foreach (Image obj in meterComponents) {
            ChangeColor(Color.white, obj);
        }
        yield return null;
        while (swimming) {
            yield return null;
            if (currentO2 >= 0) {
                currentO2 -= .1f * Time.deltaTime;
                oxygenMeter.value = currentO2;
            }
            else {
                asphyxiationAction(Time.deltaTime * .1f);
                foreach (Image obj in meterComponents)
                {
                    ChangeColor(Color.Lerp(Color.white, Color.clear, .5f), obj);
                }
            }
        }
        yield return null;
        ResetOxygen();
    }

    void ChangeColor(Color newcolor, Image obj) {
        obj.color = newcolor;
    }

    void ResetOxygen() {
        currentO2 = maxO2;
        oxygenMeter.value = currentO2;
        swimming = false;
        foreach (Image obj in meterComponents)
        {
            ChangeColor(Color.clear, obj);
        }
    }

}
