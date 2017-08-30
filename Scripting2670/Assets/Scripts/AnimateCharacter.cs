using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AnimateCharacter : MonoBehaviour {

    Animator anims;

    private void Start(){
        anims = GetComponent<Animator>();
        MovementInput.KeyAction += Animate;
    }

    private void Animate(float obj)
    {
        anims.SetFloat("Walk", obj);
    }
}
