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
                break;
            case 2:
                fish += AddOrSub(Item);
                break;
            case 3:
                rocks += AddOrSub(Item);
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
                selectedObject++;
                break;
            case 2:
                if (rocks == 0) { selectedObject++; CycleInventory(); break; }
                print("Rocks: " + rocks);
                selectedObject++;
                break;
            case 3:
                if (berries == 0) { selectedObject++; CycleInventory(); break; }
                print("Berries: " + berries);
                selectedObject++;
                break;
            default:
                if (fish != 0) { selectedObject = 1; CycleInventory(); break; }
                if (rocks != 0) { selectedObject = 2; CycleInventory(); break; }
                if (berries != 0) { selectedObject = 3; CycleInventory(); break; }
                print("you've got nothing");
                break;
        }
    }

    void Throw() {
        print("Throw the " + selectedObject);
    }
}
