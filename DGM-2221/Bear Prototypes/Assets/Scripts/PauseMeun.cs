using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System;

public class PauseMeun : MonoBehaviour {

    private bool isPaused = false;
    public Image[] PauseMenuComponents, pauseButton;
    public Color activeColor;

    public static Action<bool> PauseAction;

    void Start() {
        ImageVisablity(Color.clear, PauseMenuComponents);
        ImageVisablity(activeColor, pauseButton);
        ButtonMethods.ClickResetAction += OnPauseClick;
    }

    void Update() {
        if (Input.GetKeyDown(KeyCode.LeftControl)) {
            PauseAction(isPaused);
            isPaused = PauseGame(isPaused);
        }
    }

    bool PauseGame(bool obj) {
        if (obj) {
            Time.timeScale = 1f;
            ImageVisablity(Color.clear, PauseMenuComponents);
            ImageVisablity(activeColor, pauseButton);
            return false;
        } else {
            Time.timeScale = 0f;
            ImageVisablity(activeColor, PauseMenuComponents);
            ImageVisablity(Color.clear, pauseButton);
            return true;
        }
    }

    void ImageVisablity(Color _color, Image[] _stuff) {
        foreach (Image obj in _stuff) {
            obj.color = _color;
        }
    }

    public void OnPauseClick() {
        PauseAction(isPaused);
        isPaused = PauseGame(isPaused);
    }
}
