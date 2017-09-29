using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PianoManager : MonoBehaviour {

    public int[] answerKey;
    private int step = 0;

    void OnTriggerEnter() {
        PianoKey.PlayNoteAction += OnNotePlayed;
    }
    void OnTriggerExit() {
        if (PianoKey.PlayNoteAction != null) { PianoKey.PlayNoteAction -= OnNotePlayed; }
    }

    void OnNotePlayed(int note) {
        if (note == answerKey[step]) { step++; print(note + " is correct"); }
        else { step = 0; print("Wrong Note " + note + " is not the same as " + answerKey[step]); }
        if (step >= answerKey.Length) { step = 0; PianoKey.PlayNoteAction -= OnNotePlayed; print("Success"); }
    }

}
