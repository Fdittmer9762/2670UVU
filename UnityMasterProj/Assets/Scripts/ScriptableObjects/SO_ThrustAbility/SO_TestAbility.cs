using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "Abilities", menuName = "Scriptable Objects/Abilities/PrintingTestAbility")]
public class SO_TestAbility : ABS_Abilities {

	public override void UseAbility (Animator _anim)
	{
		Debug.Log(_anim.GetFloat("Charge"));
	}
}
