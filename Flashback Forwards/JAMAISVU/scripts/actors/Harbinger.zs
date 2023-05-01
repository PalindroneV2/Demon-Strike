class Harbinger : CyberDemon
{
	Default
	{
		Tag "Harbinger of Doom";
		Obituary "%o was crushed by the Harbinger of Doom.";
		Health 3500;
		Radius 40;
		Height 110;
		Mass 1000;
		Speed 15;
		PainChance 20;
		SeeSound "cyber/sight";
		PainSound "cyber/pain";
		DeathSound "superdemon/death";
		ActiveSound "cyber/active";
		MONSTER;
		+BOSS;
		+FLOORCLIP;
		+NORADIUSDMG;
		+DONTMORPH;
		+MISSILEMORE;
	}
	States
	{
		Spawn:
			SUPR AB 10 A_Look;
			Loop;
		See:
			SUPR A 3 A_Hoof;
			SUPR ABBCC 3 A_Chase;
			SUPR D 3 A_Hoof;
			SUPR D 3;
			Loop;
		Missile:
			SUPR Q 0 A_Jump(128,"Missile2");
			SUPR QR 4 A_FaceTarget;
			SUPR S 8 A_SpawnProjectile ("SuperDemonBall", 54);
			SUPR QR 4 A_FaceTarget;
			SUPR S 8 A_SpawnProjectile ("SuperDemonBall", 54);
			SUPR QR 4 A_FaceTarget;
			SUPR S 9 A_SpawnProjectile ("SuperDemonBall", 54);
			Goto See;
		Missile2:
			SUPR EF 6 A_FaceTarget;
			SUPR GG 0 A_SpawnProjectile ("SuperDemonBall", 54, 0, -10);
			SUPR GG 0 A_SpawnProjectile ("SuperDemonBall", 54, 0, -5);
			SUPR GG 0 A_SpawnProjectile ("SuperDemonBall", 54, 0, 5);
			SUPR GG 0 A_SpawnProjectile ("SuperDemonBall", 54, 0, 10);
			SUPR G 10 A_SpawnProjectile ("SuperDemonBall", 54, 0);
			Goto See	;		
		Pain:
			SUPR H 10 A_Pain;
			Goto See;
		Death:
			SUPR I 4 A_StartSound ("superdemon/snarl", chan_5);
			SUPR J 4 A_SpawnProjectile("Blood",0,0,random(-80,-100),2,random(45,80));
			SUPR J 4 A_Scream;
			SUPR KKKK 1 A_SpawnProjectile("Blood",0,0,random(-80,-100),2,random(45,80));
			SUPR L 3 A_SpawnProjectile ("SuperDemonArm", 54, -50, -50);
			SUPR MN 5 A_SpawnProjectile("Blood",0,0,random(-80,-100),2,random(45,80));
			SUPR O 7 A_StartSound ("superdemon/crash");
			SUPR PPPPPPP 1 A_SpawnProjectile("Blood",0,0,random(-80,-100),2,random(45,80));
			SUPR P 7 A_NoBlocking;
			SUPR P -1 A_BossDeath ;
			Stop;
	}
}

class SuperDemonBall : Actor
{
	Default
	{
		Radius 6;
		Height 16;
		Speed 16;
		Damage 15;
		Scale 1.5;
		// RenderStyle Add;
		PROJECTILE;
		+RANDOMIZE;
		SeeSound "baron/attack";
		DeathSound "baron/shotx";
		Decal "BigScorch";
	}
	States
	{
		Spawn:
			BAL9 AB 1 bright;
			Loop;
		Death:
			BAL9 CDE 6 bright;
			Stop;
	}
}

class  SuperDemonArm : Actor
{
	Default
	{
		Radius 10;
		Height 8;
		Speed 1;
		Damage 1;
		Scale 1;
		PROJECTILE;
		-NOGRAVITY;
		+LOWGRAVITY;
	}
	States
	{
		Spawn:
			SUPH A 5 A_SpawnProjectile("Blood",0,0,random(-80,-100),2,random(45,80));
			SUPH B 5 A_SpawnProjectile("Blood",0,0,random(-80,-100),2,random(45,80));
			SUPH C 5 A_SpawnProjectile("Blood",0,0,random(-80,-100),2,random(45,80));
			Goto Death;
		Death:
			SUPH D 5 A_SpawnProjectile("Blood",0,0,random(-80,-100),2,random(45,80));
			SUPH E -1 A_SpawnProjectile("Blood",0,0,random(-80,-100),2,random(45,80));
			Stop;
	}
}