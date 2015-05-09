using UnityEngine;
using System.Collections;

public class SelfDestruct : MonoBehaviour {

	public float killTime = 2f;

	IEnumerator Kill ()
	{
		yield return new WaitForSeconds (killTime);
		Object.Destroy (this.gameObject);
	}

	// Use this for initialization
	void Start () {
		StartCoroutine (Kill ());
	}

}
