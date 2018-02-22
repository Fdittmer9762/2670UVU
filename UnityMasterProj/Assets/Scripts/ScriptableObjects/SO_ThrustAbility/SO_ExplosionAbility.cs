using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "Abilities", menuName = "Scriptable Objects/Abilities/Explosion")]
public class SO_ExplosionAbility : ABS_Abilities {

	public override void UseAbility (Animator _anim)
	{
		GameObject explosion = _anim.GetComponentInChildren<GameObject> (); //unable to use getcomponent in a non monobehaviour
	}

}
