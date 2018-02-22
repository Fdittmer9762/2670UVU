using System.Collections;
using System.Collections.Generic;
using UnityEngine;

// This class controlls player movement based off the information contained in the Player scriptable object
[RequireComponent(typeof(CharacterController))]
public class PlayerController : MonoBehaviour 
{
	private CharacterController cc;
	public SO_Player player;
	//public ABS_Abilities primaryAbility, secondaryAbility, recoveryAbility;

	private float verticalVelocity = 0.0f;
	private float speed = 0;
	[HideInInspector]public Vector3 move = Vector3.zero;

	public Animator weaponAnims;

    public Transform CameraPos;

    private bool canMove;

	void Start() 
	{
		cc = GetComponent<CharacterController>();
		weaponAnims = GetComponent<Animator>();
		//weaponAnims = player.characterAnimatorController;
        canMove = true;
	}

	void Update() 
	{
        if (canMove)
        {
            //MoveInput();

            AbilityInput ();
        }
	}

	///
	/// MOVE INPUT
	///
	void MoveInput(){
		/*if(Time.timeScale ==  1)
		{
			if(cc.isGrounded) 
			{
				verticalVelocity = player.Jump(verticalVelocity);
			}
			else
			{
				verticalVelocity = player.ApplyGravity(verticalVelocity);
			}

			speed = player.Run(speed);

			//move = Vector3.zero;
			move.x = Input.GetAxis("Horizontal") * speed;
			move.z = Input.GetAxis("Vertical") * speed;
			move.y = verticalVelocity;

			//this makes the character controller move based off the local rotation and not global
			move = transform.TransformDirection(move);
			cc.Move(move * Time.deltaTime);
		}*/
	}
		

	void AbilityInput(){
		if(Input.GetButtonDown("Ability01"))								//checks to see if the button was pressed
		{																	//****button strings must match****\\
			weaponAnims.SetTrigger("Ability01");
		}
		if(Input.GetButtonDown("Ability02"))								//checks to see if the button was pressed
		{																	//****button strings must match****\\
			weaponAnims.SetTrigger("Ability02");
		}
		/*if(Input.GetButtonDown("Ability03"))								//checks to see if the button was pressed
		{																	//****button strings must match****\\
			weaponAnims.SetTrigger("Ability03");
		}*/
	}

}
