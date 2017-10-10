using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class PlayerMoveInput : MonoBehaviour {

    private bool GameIsActive = true;

    private bool isChargingThrow = false;

    public static Action<float> HorizontalInput;
    public static Action JumpAction;
    public static Action InteractAction;
    public static Action<float> VerticalInputAction;
    public static Action ThrowAction;
    public static Action CycleInvAction;
    public static Action<bool> SprintAction;
    

    void Start() {
        PlayerHealth.ResetAction += OnReset;
        PlayerHealth.DeathAction += OnDeath;
        StartCoroutine(PsudoUpdate());
    }

    IEnumerator PsudoUpdate() {
        while (GameIsActive) {
            PlayerInput();
            yield return null;
        }
    }

    void PlayerInput() {
        VerticalInput();
        HorizontalInputMethod();
        JumpInput();
        InteractInput();
        ThrowInput();
        CycleInput();
        SprintInput();
    }

    void HorizontalInputMethod() {
        if (HorizontalInput != null){
            HorizontalInput(Input.GetAxis("Horizontal"));
            //print("Horizontal Input Called");
        }
    }

    void VerticalInput() {
        if (VerticalInputAction != null) {
            VerticalInputAction(Input.GetAxis("Vertical"));
        }
    }

    void JumpInput() {
        if (Input.GetKeyDown(KeyCode.Space) && JumpAction != null) {
            JumpAction();
            //print("Jump Action Called");
        }
    }

    void InteractInput() {
        if (Input.GetKeyDown(KeyCode.C) && InteractAction != null) {
            InteractAction();
            //print("Interact called");
        }
        //print("Interact method called");
    }

    void ThrowInput() {
        if (Input.GetKeyDown(KeyCode.X) && ThrowAction != null) {
            ThrowAction();
            StartCoroutine(ThrowReleaseCheck());
        }
    }

    void SprintInput() {
        if (Input.GetKeyDown(KeyCode.B) && SprintAction != null) {
            SprintAction(true);
        }
        if (Input.GetKeyUp(KeyCode.B) && SprintAction != null) {
            SprintAction(false);
        }
    }

    IEnumerator ThrowReleaseCheck() {
        isChargingThrow = true;
        while (isChargingThrow) {
            if (Input.GetKeyUp(KeyCode.X)) {//not detecting on first release, must press a second time to trigger correctly
                isChargingThrow = false;
                //print("Throw");
            }
            yield return null;
        }
        yield return null;
        if (ThrowAction != null) { ThrowAction(); }
        yield return null;
    }

    void CycleInput() {
        if (Input.GetKeyDown(KeyCode.V) && CycleInvAction != null) {
            CycleInvAction();
        }
    }

    void OnDeath() {
        GameIsActive = false;
    }

    void OnReset() {
        GameIsActive = true;
        StartCoroutine(PsudoUpdate());
    }
}
