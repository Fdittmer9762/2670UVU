using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class PianoManager : MonoBehaviour {

    public int[] answerKey;
    private int step = 0;

    public static Action PianoSolved;

    void OnTriggerEnter() {
        PianoKey.PlayNoteAction += OnNotePlayed;
    }
    void OnTriggerExit() {
        if (PianoKey.PlayNoteAction != null) { PianoKey.PlayNoteAction -= OnNotePlayed; }
    }

    void OnNotePlayed(int note) {
        if (note == answerKey[step]) { step++; print(note + " is correct"); }
        else { step = 0; print(note + " : thats not right"); }
        if (step >= answerKey.Length) {
            step = 0;
            PianoKey.PlayNoteAction -= OnNotePlayed;
            print("Success");
            if (PianoSolved!= null) { PianoSolved(); }
        }
    }

}
