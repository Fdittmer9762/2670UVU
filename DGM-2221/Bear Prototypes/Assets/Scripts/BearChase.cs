using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BearChase : MonoBehaviour {

    public List<GameObject> Targets;

    public float bestDist = 20f;
    

    void Start () {
        AgroObject.AddAgroObject += OnNewTarget;
        AgroObject.RemoveAgroObject += OnTargetEscape;
    }

    void OnNewTarget(GameObject newTarget, string tS) {
        print(Targets.Count);
        if(Targets.Count > 0) {
            bestDist = FindDistance(Targets[Targets.Count - 1], this.gameObject);
            AddToList(tS, newTarget);
        }
        else { Targets.Add(newTarget);}
    }

    void AddToList(string objType, GameObject newTarget) {
        for (int i = 0; i < Targets.Count; i++) { 
            if (Targets[i].name == objType) {
                bestDist = FindDistance(this.gameObject, Targets[i]);
                if (FindDistance(this.gameObject, Targets[i]) < bestDist) {
                    //bestDist = FindDistance(this.gameObject, Targets[i]);
                    Targets.Insert(i-1, newTarget); //somthing wrong with the insert function
                    //Targets.Add(newTarget);
                    break;
                }
            }
            else { Targets.Add(newTarget); }
        }
    }

    void OnTargetEscape(GameObject target) {
        if (Targets.Count > 0) {
            for (int i = 0; i < Targets.Count; i++) {
                if (target == Targets[i]) {
                    Targets.RemoveAt(i);
                    print(target.name + " has been Removed!");
                }
            }
        } else{ print("Nothing Before, Nothing Now"); }
    }

    float FindDistance(GameObject objA, GameObject objB){
        return Vector3.Distance(objA.transform.position, objB.transform.position);
    }

    float FindDistance(Transform objA, Transform objB) {
        return Vector3.Distance(objA.position, objB.position);
    }
}
