using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HorizontalMovement : MonoBehaviour
{

    public CharacterController playerCC;
    float speed = 5;
    Vector3 tempPos;

    void Start()
    {
        playerCC = GetComponent<CharacterController>();
        PlayerMoveInput.HorizontalInput += Movement;
    }

    void Movement(float obj)
    {
        tempPos.x = obj * speed * Time.deltaTime;
        playerCC.Move(tempPos);
        print(obj);
    }

}
