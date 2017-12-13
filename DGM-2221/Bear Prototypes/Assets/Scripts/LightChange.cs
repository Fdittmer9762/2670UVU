using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LightChange : MonoBehaviour {

    public float blendTime;
    private bool canChange = true;
    public Color colorToChangeTo;
    private Color origColor, tempColor;
    public Light chngLight;

    void OnTriggerEnter() {
        origColor = chngLight.color;
        if (!canChange) {
            StopCoroutine(ChangeLight(tempColor, origColor, chngLight));
        }
        StartCoroutine(ChangeLight(origColor, colorToChangeTo, chngLight));
    }

    void OnTriggerExit() {
        tempColor = chngLight.color;
        if (!canChange) {
            StopCoroutine(ChangeLight(origColor, colorToChangeTo, chngLight));
        }
        StartCoroutine(ChangeLight(tempColor, origColor, chngLight));
    }

    IEnumerator ChangeLight(Color _orig, Color _desired, Light _light) {
        canChange = false;
        float lerpValue = 0f;
        while (lerpValue <= 1f) {
            lerpValue += (1f / blendTime) * Time.deltaTime;
            chngLight.color = Color.Lerp(_orig, _desired, lerpValue);
            yield return null;
        }
        yield return null;
        canChange = true;
    }

}
