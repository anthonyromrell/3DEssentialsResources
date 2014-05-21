#pragma strict

class CharacterClass {
	//Perimeters
	//*********************************************************************************
	var theCharacterModel: GameObject;
	var gravity: float;
	var theSpeed: float;
	var jumpSpeed: float;
	var theHealth: float;
	var theIdleList = Array("idle1", "idle2");
	var theNum: int;
	var nextTime: int = 5;
			
	var theCharacterTransform: Transform;
	var theCharacterController: CharacterController;
	private var thePosition: Vector3 = Vector3.zero;
	
	//Methods
	//*********************************************************************************
	function StartCharacter () {
		theCharacterTransform = theCharacterModel.transform;
		theCharacterController = 
			theCharacterTransform.GetComponent("CharacterController");
	}
	
	
	function RotateCharacter (horizontal:float) {
		theCharacterTransform.Rotate(0,horizontal,0);
	}

	function MoveCharacter (vertical:float) {
		//idle Control
		if (Time.time > nextTime) {
        	nextTime = Time.time + 5;
        	theNum = Mathf.Round(Random.Range(0,1.1));
        	Debug.Log(theNum);
    	}
    
		if (theCharacterController.isGrounded) {
			thePosition = Vector3(0,0,vertical*theSpeed);
			thePosition = theCharacterTransform.TransformDirection(thePosition);
			if (Input.GetButton("Jump")) {
				thePosition.y = jumpSpeed;
			}
			if (vertical > 0) {
				theCharacterModel.animation.CrossFade("run");
			} else if (vertical < 0) {
				theCharacterModel.animation.CrossFade("runBack");
			} else if (Input.GetKey(KeyCode.G)) {
				thePosition = Vector3(0,0,1*theSpeed);
				theCharacterModel.animation.CrossFade("walk");
				Debug.Log("g");
			} else {
				theCharacterModel.animation.CrossFade(theIdleList[theNum]);
			}
		} else if (!theCharacterController.isGrounded) {
			theCharacterModel.animation.CrossFade("jump");
		}
		thePosition.y -= gravity * Time.deltaTime;
		theCharacterController.Move(thePosition * Time.deltaTime);
	}
}