using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BearChase : MonoBehaviour {

    public List<GameObject> Targets;
    private UnityEngine.AI.NavMeshAgent bearAgent;

    public float bestDist = 20f;
    

    void Start () {
        AgroObject.AddAgroObject += OnNewTarget;
        AgroObject.RemoveAgroObject += OnTargetEscape;
        bearAgent = GetComponent<UnityEngine.AI.NavMeshAgent>();
        print("default target count"+Targets.Count);
    }

    IEnumerator Chase() {
        print("I am in persuit of the target"+ Targets.Count);
        while (Targets.Count > 0) {
            bearAgent.SetDestination(Targets[0].transform.position);
            print("Gotta Have those " + Targets[0].name);
            yield return null;
        }
        print("All Targets Down, returning to base");
        yield return null;
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
            if (Targets[i].name == objType) {//***found the issue, its a refrence type not an equivilance*** 
                print("They Match!!!");
                bestDist = FindDistance(this.gameObject, Targets[i]);
                if (FindDistance(this.gameObject, Targets[i]) < bestDist) {
                    Targets.Insert(i-1, newTarget);
                    break;
                }
            }
            else { Targets.Add(newTarget); print("Targets Count: " + Targets.Count); }
        }
        if (true) { StartCoroutine(Chase()); }
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
