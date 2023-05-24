class MP40 : DoomWeapon
{
	Default
	{
		Weapon.SelectionOrder 700;
       //$Category Weapons
		Weapon.SlotNumber 4;
		Weapon.AmmoUse 1;
		Weapon.AmmoGive 20;
		Weapon.AmmoType "Clip";
		Inventory.PickupMessage "You got the MP40!";
		attacksound "MP40/Fire";
		Obituary "%o was riddled by %k's MP40.";
		Tag "MP40";
		Scale 0.5;
	}
	States
	{
	Ready:
		MP40 A 1 A_WeaponReady;
		Loop;
	Deselect:
		MP40 A 1 A_Lower;
		Loop;
	Select:
		MP40 A 1 A_Raise;
		Loop;
	Fire:
		MP40 B 1 A_FireBullets(5, 4, 1, 5, "BulletPuff");
		MP40 B 0 A_GunFlash;
		MP40 D 1 A_SetPitch (pitch-0.4);
		MP40 CA 1 A_SetPitch (pitch+0.2);
		MP40 A 0 A_ReFire;
		Goto Ready;
	Flash:
		TNT1 A 5 Bright A_Light1;
		Goto LightDone;
		TNT1 A 5 Bright A_Light1;
		Goto LightDone;
	Spawn:
		MP40 E -1;
		Stop;
	}
}
class Handgun : Pistol replaces Pistol
{
 	Default
	{
		Weapon.SelectionOrder 1900;
		Weapon.SlotNumber 2;
		Weapon.AmmoUse 1;
		Weapon.AmmoGive 20;
		Weapon.AmmoType "Clip";
		Obituary "%k somehow killed %o with a Handgun.";
		-WEAPON.WIMPY_WEAPON;
		Inventory.PickupMessage "You picked up a Handgun.";
		Tag "Handgun";
	}
	States
	{
	Ready:
		PISG A 1 A_WeaponReady;
		Loop;
	Deselect:
		PISG A 1 A_Lower;
		Loop;
	Select:
		PISG A 1 A_Raise;
		Loop;
	Fire:
		PISG A 3;
		PISG B 3 A_FirePistol;
		PISG C 3;
		PISG B 3 A_ReFire;
		Goto Ready;
	Flash:
		PISF A 3 Bright A_Light1;
		Goto LightDone;
		PISF A 3 Bright A_Light1;
		Goto LightDone;
 	Spawn:
		PIST A -1;
		Stop;
	}
}
class Minigun : DoomWeapon replaces Chaingun
{
	Default
	{
		Weapon.SelectionOrder 699;
		Weapon.SlotNumber 4;
		Weapon.AmmoUse 1;
		Weapon.AmmoGive 20;
		Weapon.AmmoType "Clip";
		Inventory.PickupMessage "You got a minigun!";
		Obituary "%o was shredded by %k with a Minigun";
		Tag "Minigun";
	}
	States
	{
	Ready:
		CHGG A 1 A_WeaponReady;
		Loop;
	Deselect:
		CHGG A 1 A_Lower;
		Loop;
	Select:
		CHGG A 1 A_Raise;
		Loop;
	Fire:
		CHGG A 0 A_StartSound("weapons/chngun", CHAN_WEAPON);
		CHGG A 0 A_GunFlash;
		CHGG A 1 A_FireBullets(5.6, 0, 1, 7, "BulletPuff");
		CHGG A 1 A_SetPitch (pitch-0.6);
		CHGG B 0 A_StartSound("weapons/chngun", CHAN_WEAPON);
		CHGG B 0 A_GunFlash("Flash2");
		CHGG B 1 A_FireBullets(5.6, 0, 1, 7, "BulletPuff");
		CHGG A 1 A_SetPitch (pitch+0.4);
		CHGG B 0 A_ReFire;
		Goto Ready;
	Flash:
		CHGF A 3 Bright A_Light1;
		Goto LightDone;
	Flash2:
		CHGF B 3 Bright A_Light2;
		Goto LightDone;
	Spawn:
		MGUN A -1;
		Stop;
	}
}