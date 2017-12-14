using UnityEngine;
using UnityEngine.SceneManagement;

public class MainMenuScript : MonoBehaviour {

    public static void LoadScene(int _scene) {
        SceneManager.LoadScene(_scene, LoadSceneMode.Single);
    }           //loads a scene using the scene's index int

    public static void LoadScene(string _scene) {
        SceneManager.LoadScene(_scene, LoadSceneMode.Single);
    }        //Loads a scene using the scene's name as a string 

}
