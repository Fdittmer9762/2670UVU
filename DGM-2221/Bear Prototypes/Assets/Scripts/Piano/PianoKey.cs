using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

[RequireComponent(typeof(AudioSource))]
public class PianoKey : MonoBehaviour {

    public static Action<int> PlayNoteAction;

    public int pitchOffset; //1 = C, 12 = root
    //enum Pitches {C,Dflat,D,Eflat,E,Fflat,F,Gflat,G,Aflat,A,Bflat,B,Root }
    private AudioSource _audio;
    //Pitches[] pitch;

    void Start() {
        _audio = GetComponent<AudioSource>();
    }


    void OnTriggerEnter() {
        PlayNote();
        //PlayerMoveInput.InteractAction += PlayNote;
    }

    /*void OnTriggerExit() {
        PlayerMoveInput.InteractAction -= PlayNote;
    }*/

    void PlayNote() {
        _audio.pitch = Mathf.Pow(2f, pitchOffset / 12.0f);
        _audio.PlayDelayed(0);
        if (PlayNoteAction != null) { PlayNoteAction(pitchOffset); }
    }

}
