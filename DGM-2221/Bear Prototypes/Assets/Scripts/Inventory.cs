using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Inventory : MonoBehaviour {

    //protected int berries, fish, rocks;
    public int selectedObject;
    protected int[] InventoryItems = new int[3];// 0 berries, 1 fish, 2 rocks
    public GameObject[] berries, fish, rocks;
    public GameObject throwSpawn;

	void Start () {
        CollectObject.CollectAction += AddToInventory;
        PlayerMoveInput.ThrowAction += Throw;
        PlayerMoveInput.CycleInvAction += CycleInventory;
	}

    void AddToInventory(int Item) {
        switch (Mathf.Abs(Item)) {
            case 1:
                InventoryItems[0] += AddOrSub(Item);
                if (InventoryItems[0] < 0) { InventoryItems[0] = 0; };
                break;
            case 2:
                InventoryItems[1] += AddOrSub(Item);
                if (InventoryItems[1] < 0) { InventoryItems[1] = 0; };
                break;
            case 3:
                InventoryItems[2] += AddOrSub(Item);
                if (InventoryItems[2] < 0) { InventoryItems[2] = 0; };
                break;
            default:
                print("you done did goofed, I cant add this");
                break;
        }
        print("Current Stash: Berries: " + InventoryItems[0] + ", Fish: " + InventoryItems[1] + ", Rocks: " + InventoryItems[2]);
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
            case 1://fish
                if (InventoryItems[1] == 0) { selectedObject++; CycleInventory(); break; }
                print("Fish: "+ InventoryItems[1]);
                selectedObject = 2;
                break;
            case 2://rocks
                if (InventoryItems[2] == 0) { selectedObject++; CycleInventory(); break; }
                print("Rocks: " + InventoryItems[2]);
                selectedObject = 3;
                break;
            case 3://berries
                if (InventoryItems[0] == 0) { selectedObject++; CycleInventory(); break; }
                print("Berries: " + InventoryItems[0]);
                selectedObject = 1;
                break;
            default:
                if (InventoryItems[1] != 0) { selectedObject = 1; CycleInventory(); break; }
                if (InventoryItems[2] != 0) { selectedObject = 2; CycleInventory(); break; }
                if (InventoryItems[0] != 0) { selectedObject = 3; CycleInventory(); break; }
                selectedObject = 1;
                print("you've got nothing");
                break;
        }
    }

    void Throw() {
        switch (selectedObject) {
            case 1://berries
                //FindDisabled(berries);
                for (int i = 0; i < berries.Length; i++) {
                    if (berries[i].activeInHierarchy == false) {
                        AddToInventory(-selectedObject);
                        berries[i].transform.position = throwSpawn.transform.position;
                        berries[i].SetActive(true);
                        //set and add force to the item
                        break;
                    }
                }
                break;
            case 2://fish
                //FindDisabled(fish);
                for (int i = 0; i < fish.Length; i++){
                    if (fish[i].activeInHierarchy == false){
                        AddToInventory(-selectedObject);
                        fish[i].transform.position = throwSpawn.transform.position;
                        fish[i].SetActive(true);
                        //set and add force to the item
                        break;
                    }
                }
                break;
            case 3://fish
                //FindDisabled(fish);
                for (int i = 0; i < rocks.Length; i++){
                    if (rocks[i].activeInHierarchy == false){
                        AddToInventory(-selectedObject);
                        rocks[i].transform.position = throwSpawn.transform.position;
                        rocks[i].SetActive(true);
                        //set and add force to the item
                        break;
                    }
                }
                break;
            default:
                print("We're testing berries here, fool. You wait your turn!");
                break;
        }
    }

    /*void FindDisabled(Array item) {
                for (int i = 0; i < item.Length; i++) {
                    if (item[i].activeInHierarchy == false) {
                        AddToInventory(-selectedObject);
                        item[i].transform.position = throwSpawn.transform.position;
                        item[i].SetActive(true);
                        //set and add force to the item
                        break;
                    }
                }
        }
    }*/
}
