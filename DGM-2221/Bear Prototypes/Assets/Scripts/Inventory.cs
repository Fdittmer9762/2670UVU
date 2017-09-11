using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Inventory : MonoBehaviour {

    protected int berries, fish, rocks;
    public int selectedObject;

	void Start () {
        CollectObject.CollectAction += AddToInventory;
        PlayerMoveInput.ThrowAction += Throw;
        PlayerMoveInput.CycleInvAction += CycleInventory;
	}

    void AddToInventory(int Item) {
        switch (Mathf.Abs(Item)) {
            case 1:
                berries += AddOrSub(Item);
                if (berries < 0) { berries = 0; };
                break;
            case 2:
                fish += AddOrSub(Item);
                if (fish < 0) { fish = 0; };
                break;
            case 3:
                rocks += AddOrSub(Item);
                if (rocks < 0) { rocks = 0; };
                break;
            default:
                print("you done did goofed, I cant add this");
                break;
        }
        //values can be negitive, must prevent
        print("Current Stash: Berries: " + berries + ", Fish: " + fish + ", Rocks: " + rocks);
    }

    int AddOrSub(int obj) {
        if (obj != 0) {
            if (obj > 0) { return 1; }
            if (obj < 0) { return -1; }
        }
        return 0;
    }

    void CycleInventory() {//******figure out how to refactor this mess**********//
        switch (selectedObject) {
            case 1:
                if (fish == 0) { selectedObject++; CycleInventory(); break; }
                print("Fish: "+ fish);
                selectedObject = 2;
                break;
            case 2:
                if (rocks == 0) { selectedObject++; CycleInventory(); break; }
                print("Rocks: " + rocks);
                selectedObject = 3;
                break;
            case 3:
                if (berries == 0) { selectedObject++; CycleInventory(); break; }
                print("Berries: " + berries);
                selectedObject = 1;
                break;
            default:
                if (fish != 0) { selectedObject = 1; CycleInventory(); break; }
                if (rocks != 0) { selectedObject = 2; CycleInventory(); break; }
                if (berries != 0) { selectedObject = 3; CycleInventory(); break; }
                selectedObject = 1;
                print("you've got nothing");
                break;
        }
    }

    void Throw() {
        print("Throw the " + selectedObject);
    }
}
