﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMovement : MonoBehaviour {

    public CharacterController playerCC;
    float speed = 5f;
    public float gravity = .5f;
    public float jumpForce = .2f;
    Vector3 tempPos;

    void Start()
    {
        playerCC = GetComponent<CharacterController>();
        ControlManager.EnableDefaultControls += OnPlayAction;                               
    }

    void OnPlayAction() //**think of better name for enable default controls**
    {
        PlayerMoveInput.HorizontalInput += Movement;                                            //enables movement (possibly make its own method for easier reuse) **don't over complicate things early**
        PlayerMoveInput.JumpAction += Jump;                                                     //enables jumping  (possibly make its own method for easier reuse)
        ControlManager.EnableDefaultControls -= OnPlayAction;
    }

    void Movement(float obj)
    {
        ApplyGravity();
        tempPos.x = obj * speed * Time.deltaTime;
        playerCC.Move(tempPos);
    }

    void ApplyGravity() {
        tempPos.y -= gravity * Time.deltaTime;
    }

    void Jump() {
        tempPos.y = jumpForce;
        print("Jump!");
    }

}
