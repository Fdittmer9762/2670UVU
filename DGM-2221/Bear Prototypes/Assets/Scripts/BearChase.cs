using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BearChase : MonoBehaviour {

    public List<GameObject> Targets;
    

    void Start () {
        AgroObject.AddAgroObject += OnNewTarget;
    }

    void OnNewTarget(GameObject newTarget, int tS) {
        if(Targets.Count > 0) {
            for (int i = 0; i < Targets.Count; i++) {
                print(newTarget.name + " is only " +FindDistance(this.gameObject, newTarget)+ " meters away!");
            }
        }
        else { Targets.Add(newTarget); print(newTarget.name+ " is the only thing I see"); }
        
        FindDistance(newTarget, this.gameObject);
    }

    float FindDistance(GameObject objA, GameObject objB){
        return Vector3.Distance(objA.transform.position, objB.transform.position);
    }

    float FindDistance(Transform objA, Transform objB) {
        return Vector3.Distance(objA.position, objB.position);
    }
}
