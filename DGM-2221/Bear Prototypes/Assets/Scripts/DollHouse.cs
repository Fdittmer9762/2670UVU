using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DollHouse : MonoBehaviour {

    public GameObject dollHouseDoor;                                    //gameobject that obscures the area from view (manually set)

	void Start () {
        //if (dollHouseDoor = null) { dollHouseDoor = GetComponentInChildren<GameObject>(); } // does not work
        //dollHouseDoor = GetComponentInChildren<GameObject>();
        //**make sure that the door is a child object of the area trigger
    }

    void OnTriggerEnter() {                                             //when the player enters the area
        ChangeDollHouse(false);                                         //will open the dollhouse door
    }

    void OnTriggerExit() {                                              //when the player exits the area
        ChangeDollHouse(true);                                          //will close the dollhouse door
    }

    void ChangeDollHouse(bool _shouldclose) {                           // activates or deactivates the gameobject that would obscure an area(dollhouse door)
        dollHouseDoor.SetActive(_shouldclose);                          //true closes door(player cannot see inside) false opens door (player can see inside)
        //**refine for later, create a disolve effect**
    }
}
