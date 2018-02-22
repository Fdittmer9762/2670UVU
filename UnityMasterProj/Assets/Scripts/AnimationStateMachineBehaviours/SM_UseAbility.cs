using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SM_UseAbility : StateMachineBehaviour {

	public ABS_Abilities stateAbility;

	public override void OnStateEnter (Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
	{
		stateAbility.UseAbility (animator);
	}

}
