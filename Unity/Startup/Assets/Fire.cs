using UnityEngine;
using System.Collections;

public class Fire : MonoBehaviour {

	public GameObject bullet;
	public Vector3 newV;

	// Use this for initialization
	void OnMouseUp () {
		newV.x = Random.Range (-20, 20);
		newV.y = Random.Range (5, 20);
		print ("Hello");
		Instantiate (bullet, newV, Quaternion.identity);
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
