using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System; //for event system

public class PlayButton : MonoBehaviour {

    public static Action Play;

    public void PushPlay() {
        //print("Pushed Play");
        if (Play != null) {
            Play();
        }
    }
}
