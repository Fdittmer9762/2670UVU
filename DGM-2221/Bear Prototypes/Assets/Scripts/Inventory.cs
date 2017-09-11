using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Inventory : MonoBehaviour {

    protected int berries, fish, rocks;
    public int selectedObject;

	void Start () {
        CollectObject.CollectAction += AddToInventory;
        PlayerMoveInput.ThrowAction += Throw;
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
        print("Current Stash: Berries: " + berries + ", Fish: " + fish + ", Rocks: " + rocks);
    }

    int AddOrSub(int obj) {
        if (obj != 0) {
            if (obj > 0) { return 1; }
            if (obj < 0) { return -1; }
        }
        return 0;
    }

    void Throw() {
        print("Throw the " + selectedObject);
    }
}
