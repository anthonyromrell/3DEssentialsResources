using UnityEngine;
using System.Collections;

public class HitAndBomb : MonoBehaviour {

	public GameObject Bomb;

	void OnCollisionEnter () {
		Instantiate (Bomb, this.transform.position, Quaternion.identity);
		Object.Destroy (this.gameObject);
	}
}
