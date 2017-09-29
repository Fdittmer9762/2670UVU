using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SeeSawMover : MonoBehaviour {

    public GameObject platformA, platformB;
    private float xOffset;
    private int aPos =3, bPos = 3;
    public Transform maxPos, minPos;
    private float weightA, weightB;
    private float maxPosPoints = 7f;
    public Vector3[] scalePos; 
    

    void OnTriggerEnter() {
        SeeSawTrigger.MovePlatformAction += Balance;
    }

    void OnTriggerExit() {
        SeeSawTrigger.MovePlatformAction -= Balance;
    }

    void Start() {
        scalePos = new Vector3[Mathf.RoundToInt(maxPosPoints)];
        //scalePosA = new Vector3[Mathf.RoundToInt(maxPosPoints)];
        //scalePosB = new Vector3[Mathf.RoundToInt(maxPosPoints)];
        FindScalePos();
    }

    void FindScalePos() {
        for (int i = 0; i < scalePos.Length; i++) {
            print((i + 1) / maxPosPoints);
            scalePos[i] = Vector3.Lerp(minPos.position, maxPos.position, (i + 1) / maxPosPoints); //plan to change to slerp with debugging
        }
        /*xOffset = platformA.transform.position.x;
        for (int i = 0; i < scalePosB.Length; i++) {
            scalePosB[i] = scalePosA[i];
            scalePosB[i].x -= xOffset;
        }
        for (int i = 0; i < scalePosA.Length; i++) {
            scalePosA[i].x += xOffset;
        }*/
    }

    void Balance(float _weight, int _label) {
        print("last");
        switch (_label) {
            case 1:
                MoveScales(FindNewWeight(_weight, weightA), platformA, platformB);
                break;
            case 2:
                MoveScales(FindNewWeight(_weight, weightB), platformB, platformA);
                break;
            default:
                print("cant move scales, thats not an platform");
                break;
        }
    }

    float FindNewWeight(float deltaWeight, float scale) {
        return scale + deltaWeight;
    }

    //void MoveScales()

    void MoveScales(float deltaWeight, GameObject changedPlatform, GameObject inversePlatform) {
        print(deltaWeight);
        xOffset = changedPlatform.transform.localPosition.x;
        //changedPlatform.transform.position = scalePos[Mathf.RoundToInt(deltaWeight)];     //will lerp to new pos after testing
        //changedPlatform.transform.localPosition += Vector3.right * xOffset;             //maintains offset
        StartCoroutine(MoveScale(changedPlatform, changedPlatform.transform.position, scalePos[Mathf.RoundToInt(deltaWeight)]));
        //inversePlatform.transform.position = scalePos[Mathf.RoundToInt(maxPosPoints - deltaWeight)];
        //inversePlatform.transform.localPosition += Vector3.right * -xOffset;
        StartCoroutine(MoveScale(inversePlatform, inversePlatform.transform.position, scalePos[Mathf.RoundToInt(maxPosPoints - deltaWeight)]));
    }

    IEnumerator MoveScale(GameObject platform, Vector3 startLocation, Vector3 destination) {
        float _travel = 0f;
        while (_travel <= 1f) {
            _travel += Time.deltaTime;
            platform.transform.position = Vector3.Lerp(startLocation, destination, _travel);
            yield return null;
        }
    }

}
