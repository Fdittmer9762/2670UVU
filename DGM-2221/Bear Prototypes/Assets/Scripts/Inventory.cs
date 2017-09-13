using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Inventory : MonoBehaviour {

    //protected int berries, fish, rocks;
    public int selectedObject;
    protected int[] InventoryItems = new int[3];// 0 berries, 1 fish, 2 rocks
    public GameObject[] berries, fish, rocks;
    public GameObject throwSpawn;
    private bool isChargingThrow = false;
    private float charge = 2.5f, maxCharge = 5f, chargeRate = .8f, throwDelay = 1f;

	void Start () {
        PlayerHealth.DeathAction += OnDeath;
        PlayerHealth.ResetAction += OnReset;
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
                        StartCoroutine(ChargeThrow(berries[i]));
                        break;
                    }
                }
                break;
            case 2://fish
                //FindDisabled(fish);
                for (int i = 0; i < fish.Length; i++){
                    if (fish[i].activeInHierarchy == false){
                        AddToInventory(-selectedObject);
                        StartCoroutine(ChargeThrow(fish[i]));
                        break;
                    }
                }
                break;
            case 3://fish
                //FindDisabled(fish);
                for (int i = 0; i < rocks.Length; i++){
                    if (rocks[i].activeInHierarchy == false){
                        AddToInventory(-selectedObject);
                        StartCoroutine(ChargeThrow(rocks[i]));
                        break;
                    }
                }
                break;
            default:
                print("We're testing berries here, fool. You wait your turn!");
                break;
        }
    }

    void Release() {
        isChargingThrow = false;
    }

    IEnumerator ChargeThrow(GameObject obj) {
        PlayerMoveInput.ThrowAction -= Throw;
        PlayerMoveInput.ThrowAction += Release;
        charge = 2.5f;
        isChargingThrow = true;
        while (isChargingThrow && charge < maxCharge) {
            charge += chargeRate * Time.deltaTime;
            yield return null;
            print(charge);
        }
        PlayerMoveInput.ThrowAction -= Release;
        obj.transform.position = throwSpawn.transform.position;
        obj.SetActive(true);
        yield return new WaitForSeconds(throwDelay);
        PlayerMoveInput.ThrowAction += Throw;
    }

    void ClearInventory() {
        for (int i = 0; i < InventoryItems.Length; i++){
            InventoryItems[i] = 0;
        }
    }

    void ReactivateItems() {
        for (int i = 0; i < berries.Length; i++){
            if (berries[i].activeInHierarchy != true) { berries[i].SetActive(true); }
        }
        for (int i = 0; i < fish.Length; i++){
            if (fish[i].activeInHierarchy != true) { fish[i].SetActive(true); }
        }
        for (int i = 0; i < berries.Length; i++){
            if (rocks[i].activeInHierarchy != true) { rocks[i].SetActive(true); }
        }
    }

    void OnDeath() {
        ClearInventory();
    }

    void OnReset() {
        ReactivateItems();
    }

}
