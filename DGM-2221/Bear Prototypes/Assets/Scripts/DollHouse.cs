using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DollHouse : MonoBehaviour {

    public GameObject dollHouseDoor;                                    //gameobject that obscures the area from view (manually set)
    private float delay;
    public float exitDelay = 2f;
    private bool playerInside;

	void Start () {
        //if (dollHouseDoor = null) { dollHouseDoor = GetComponentInChildren<GameObject>(); } // does not work
        //dollHouseDoor = GetComponentInChildren<GameObject>();
        //**make sure that the door is a child object of the area trigger
    }

    void OnTriggerEnter() {                                             //when the player enters the area
        if(playerInside == false) {
            playerInside = true;
            delay = 0f;
            StartCoroutine(ChangeDollHouse(false));                         //will open the dollhouse door
            }
    }

    void OnTriggerExit() {                                              //when the player exits the area
        if(playerInside == true) {
            playerInside = false;
            delay = exitDelay;
            StartCoroutine(ChangeDollHouse(true));                          //will close the dollhouse door
        }
    }

    IEnumerator ChangeDollHouse(bool _shouldclose) {                    // activates or deactivates the gameobject that would obscure an area(dollhouse door)
        yield return new WaitForSeconds(delay);                         //delays panel closing
        if(playerInside != _shouldclose) {
            dollHouseDoor.SetActive(_shouldclose);                          //true closes door(player cannot see inside) false opens door (player can see inside)
        }
        //**refine for later, create a disolve effect**
    }
}
