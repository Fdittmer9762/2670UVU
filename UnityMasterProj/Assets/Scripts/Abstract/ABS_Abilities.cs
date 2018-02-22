using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class ABS_Abilities : ScriptableObject 
{
	public float maxCharge;
	public float minDamage, maxDamage;
	public float minKB, maxKB;
	public float minRange, maxRange;

	public abstract void UseAbility (Animator _anim);

	public void SetDamage(float _charge, GameObject _go){
		Damager _dam = _go.GetComponent<Damager> ();
		_dam.baseDamage = Mathf.RoundToInt(Mathf.Lerp(minDamage, maxDamage, _charge/maxCharge));
		_dam.baseKnockBack = Mathf.RoundToInt(Mathf.Lerp(minKB, maxKB, _charge/maxCharge));
	}

	//old things removed
}
