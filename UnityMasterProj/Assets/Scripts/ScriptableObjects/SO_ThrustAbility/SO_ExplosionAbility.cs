using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "Abilities", menuName = "Scriptable Objects/Abilities/Explosion")]
public class SO_ExplosionAbility : ABS_Abilities {

	//temp thing **delet later**
	public GameObject explosionPrefab;

	public override void UseAbility (Animator _anim)
	{
		GameObject explosion = Instantiate(explosionPrefab, _anim.transform.position, Quaternion.identity);
		SetDamage (_anim.GetFloat ("Charge"), explosion);
		explosion.transform.localScale = Vector3.one * Mathf.Lerp (minRange, maxRange,_anim.GetFloat ("charge")/ maxCharge);
	}

}
