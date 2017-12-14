using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LoadLevelOnTrigger : MonoBehaviour {

    public int sceneIndex;
    public string sceneName;
    public bool usingSceneNumber = true;

    void OnTriggerEnter() {
        print("working");
        if (usingSceneNumber) {
            MainMenuScript.LoadScene(sceneIndex);
        } else {
            MainMenuScript.LoadScene(sceneName);
        }
        //EventNuller.NullActionsCall();
    }

}
