using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System; //for event system
using UnityEngine.UI; //allows access to unity buttons

public class PlayButton : MonoBehaviour {

    public static Action Play;

    public void PushPlay() {
        if (Play != null) {
            Play();
            Invoke("DisableButton", 0.5f);                      //calls disable button with a half second delay
        }
    }

    void DisableButton() {
        //GetComponent<Button>().enabled = false;               //Disables the button
        GetComponent<Button>().interactable = false;
    }
}
