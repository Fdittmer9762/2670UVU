using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BreakingBranch : MonoBehaviour {

    private Rigidbody branchRB;                                             //ref to gameobject
    public float fallTime = 1.2f;                                           //time that the branch will be falling

    void Start() {
        branchRB = GetComponent<Rigidbody>();                               //sets the ref for the RB
    }

    void OnTriggerEnter () {
        FallingPlatformTrigger.CollapseAction += OnCollapse;                //when player is near sub to collapsing platform
    }

    void OnTriggerExit() {
        FallingPlatformTrigger.CollapseAction -= OnCollapse;                //when player is away unsub from platform
    }

    void OnCollapse(float collapseDelay) {
        StartCoroutine(Break(collapseDelay));                               //start break with info from collapse action
    }

    IEnumerator Break(float delay) {                                        
        yield return new WaitForSeconds(delay*.8f);                             //waits for delay time before breaking to sync with platform falling
        branchRB.isKinematic = false;                                       //activates physics on hinge joint
        branchRB.useGravity = true;
        yield return new WaitForSeconds(delay * fallTime);                  //waits for fall time
        branchRB.useGravity = false;                                        //deactivates physics
        branchRB.isKinematic = true;
    }

}
