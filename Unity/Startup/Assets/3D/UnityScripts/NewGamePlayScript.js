#pragma strict

var myBear: MainCharacterClass;

function Start () {
	myBear.StartCharacter();
}

function Update () {
	myBear.MainCharacterInput();
}