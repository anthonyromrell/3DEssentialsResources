#pragma strict

class MainCharacterClass extends CharacterClass {
	//Perimeters
	//*********************************************************************************
	var topHealth: float;
	//var trigger: OnTriggerEnter;
	//Methods
	//*********************************************************************************	

	function MainCharacterInput () {
		RotateCharacter(Input.GetAxis("Horizontal"));
		MoveCharacter(Input.GetAxis("Vertical"));
	}
}