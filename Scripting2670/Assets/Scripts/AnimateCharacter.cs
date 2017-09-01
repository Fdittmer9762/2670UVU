using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AnimateCharacter : MonoBehaviour {

    Animator anims;

    void Start(){
        anims = GetComponent<Animator>();
        PlayButton.Play += OnPlayAction;
    }

    void OnPlayAction()
    {
        MovementInput.KeyAction += Animate;                     //Creates a ref to the movement script and the KeyAction event
    }

    private void Animate(float obj)
    {
        anims.SetFloat("Walk", obj);
    }
}
