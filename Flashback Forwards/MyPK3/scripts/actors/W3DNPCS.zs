class EnemyDog : MBFHelperDog
{
	Default
	{
		Health 40;
		Tag "Nazi Hound";
       //$Category Monsters
		Species "Nazi";
		Obituary "You were mauled to death by a Nazi Hound";
		+DONTHARMSPECIES
		+NOINFIGHTSPECIES
	}
}
class NaziGuard : WolfensteinSS
{
	Default
	{
		Health 30;
		Radius 20;
		Height 56;
		Speed 10;
		PainChance 200;
		Monster;
		+FLOORCLIP
		SeeSound "naziguard/sight";
		PainSound "wolfss/pain";
		DeathSound "naziguard/death";
		ActiveSound "wolfss/active";
		AttackSound "wolfss/attack";
		Obituary "You were killed by a Nazi Guard.";
		Tag "Nazi Guard";
       //$Category Monsters
		Dropitem "Clip";
		Species "Nazi";
		+DONTHARMSPECIES
		+NOINFIGHTSPECIES
	}
	States
	{
	Spawn:
		NZGD AB 10 A_Look;
		Loop;
	See:
		NZGD AABBCCDD 3 A_Chase;
		Loop;
	Missile:
		NZGD E 10 A_FaceTarget;
		NZGD G 4 BRIGHT A_CPosAttack;
		NZGD F 6 A_FaceTarget;
		NZGD F 4 A_CPosRefire;
		Goto Missile+1;
	Pain:
		NZGD H 3;
		NZGD H 3 A_Pain;
		Goto See;
	Death:
		NZGD I 5;
		NZGD J 5 A_Scream;
		NZGD K 5 A_NoBlocking;
		NZGD L 5;
		NZGD M -1;
		Stop;
	Raise:
		NZGD M 5;
		NZGD LKJI 5;
		Goto See ;
	}
}
class WaffenSS : WolfensteinSS replaces WolfensteinSS
{
	Default
	{
		Health 50;
		Radius 20;
		Height 56;
		Speed 8;
		PainChance 150;
		Monster;
		+FLOORCLIP
		SeeSound "wolfss/sight";
		PainSound "wolfss/pain";
		DeathSound "wolfss/death";
		ActiveSound "wolfss/active";
		AttackSound "MP40/Fire";
		Obituary "You were riddled by holes by a Waffen SS.";
		Tag "Waffen SS";
       //$Category Monsters
		Dropitem "MP40";
		Species "Nazi";
		+DONTHARMSPECIES
		+NOINFIGHTSPECIES
	}
	States
	{
	Spawn:
		SSWV AB 10 A_Look;
		Loop;
	See:
		SSWV AABBCCDD 3 A_Chase;
		Loop;
	Missile:
		SSWV F 10 A_FaceTarget;
		SSWV G 3 BRIGHT A_CPosAttack;
		SSWV F 3 A_FaceTarget;
		SSWV G 3 BRIGHT A_CPosAttack;
		SSWV F 1 A_CPosRefire;
		Goto Missile+1;
	Pain:
		SSWV H 3;
		SSWV H 3 A_Pain;
		Goto See;
	Death:
		SSWV I 5;
		SSWV J 5 A_Scream;
		SSWV K 5 A_NoBlocking;
		SSWV L 5;
		SSWV M -1;
		Stop;
	XDeath:
		SSWV N 5 ;
		SSWV O 5 A_XScream;
		SSWV P 5 A_NoBlocking;
		SSWV QRSTU 5;
		SSWV V -1;
		Stop;
	Raise:
		SSWV M 5;
		SSWV LKJI 5;
		Goto See ;
	}
}
class PlasmaSS : WolfensteinSS
{
	Default
	{
	   Health 75;
		PainChance 125;
		SeeSound "wolfss/sight";
		PainSound "wolfss/pain";
		DeathSound "wolfss/death";
		ActiveSound "wolfss/active";
		AttackSound "baby/attack";
		Obituary "You were melted by a Plasmawaffen SS.";
		Tag "Plasmawaffen SS";
       //$Category Monsters
		Dropitem "PlasmaRifle";
		Species "Nazi";
		+DONTHARMSPECIES
		+NOINFIGHTSPECIES
	}
	States
	{
		Spawn:
			SSPL AB 10 A_Look;
			Loop;
		See:
			SSPL AABBCCDD 3 A_Chase;
			Loop;
		Missile:
			SSPL E 5 A_FaceTarget;
			SSPL G 4 BRIGHT A_PlasmaSSAttack;
			SSPL F 4 BRIGHT;
			SSPL F 5 A_CPosRefire;
			Goto Missile+1;
		Pain:
			SSPL H 3;
			SSPL H 3 A_Pain;
			Goto See;
		Death:
			SSPL I 5;
			SSPL J 5 A_Scream;
			SSPL K 5 A_NoBlocking;
			SSPL L 5;
			SSPL M -1;
			Stop;
		XDeath:
			SSPL N 5 ;
			SSPL O 5 A_XScream;
			SSPL P 5 A_NoBlocking;
			SSPL QRSTU 5;
			SSPL V -1;
			Stop;
		Raise:
			SSPL M 5;
			SSPL LKJI 5;
			Goto See ;
	}
}

extend class PlasmaSS
{
	void A_PlasmaSSAttack()
	{
		if (target)
		{
			A_FaceTarget();
			SpawnMissile(target, "ArachnotronPlasma");
		}
	}
}