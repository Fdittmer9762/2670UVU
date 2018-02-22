using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SM_Charge : StateMachineBehaviour {

	public override void OnStateEnter (Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
	{
		animator.SetFloat ("Charge", 0f);
	}

	public override void OnStateUpdate (Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
	{
		animator.SetFloat ("Charge", animator.GetFloat ("Charge") + Time.deltaTime);
		if (Input.GetButtonUp ("Ability02")) {
			animator.SetTrigger ("ButtonReleased");
		}
	}

}
