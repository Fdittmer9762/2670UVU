using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AnimateCharacter : MonoBehaviour {

    Animator anims;                                             //Ref to player animation system

    void Start(){
        anims = GetComponent<Animator>();                       //Gets animator from current game object
        PlayButton.Play += OnPlayAction;                        //subs to the play button
    }

    void OnPlayAction()                                         //enables player controls
    {
        MovementInput.KeyAction += Animate;                     //Creates a ref to the movement script and the KeyAction event
        PlayButton.Play -= OnPlayAction;
    }

    private void Animate(float obj)                             //animates character using keyaction event
    {
        anims.SetFloat("Walk", obj);                            //sets the walk anim speed using the passed float
    }
}
