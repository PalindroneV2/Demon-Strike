class W3DPotTree : TorchTree
{
    Default
    {
        Tag "Potted Tree (Wolf3D)";
    }
    States{
        Spawn:
            W3PG A -1;
            Stop;
    }
}
class W3DPotPlant : TorchTree
{
    Default
    {
        Tag "Potted Plant (Wolf3D)";
    }
    States{
        Spawn:
            W3PB A -1;
            Stop;
    }
}
class W3DPotAlone: TorchTree
{
    Default
    {
        Tag "Blue Pot (Wolf3D)";
    }
    States{
        Spawn:
            W3PS A -1;
            Stop;
    }
}
class W3DWoodBarrel : TorchTree
{
    Default
    {
        Tag "Wooden Barrel (Wolf3D)";
    }
    States{
        Spawn:
            W3WB A -1;
            Stop;
    }
}
class W3DArmorDeco : TorchTree
{
    Default
    {
        Tag "Decorative Armor (Wolf3D)";
    }
    States{
        Spawn:
            W3AR A -1;
            Stop;
    }
}
class W3DNaziFlag : TorchTree
{
    Default
    {
        Tag "Nazi Flag (Wolf3D)";
    }
    States{
        Spawn:
            W3FL A -1;
            Stop;
    }
}

class W3DHangingSkelton :   Meat2
{    
    Default
    {
        Tag "Hanging Skeleton (Wolf3D)";
        Height 64;
    }
    States
    {
        Spawn:
            SKLC A -1;
            Stop;
    }
}
class W3DCage :   Meat2
{
    Default
    {
        Tag "Hanging Cage (Wolf3D)";
        Height 64;
    }
    States
    {
        Spawn:
            W3CG A -1;
            Stop;
    }
}
class W3DCage2 :   Meat2
{
    Default
    {
        Tag "Hanging Cage with Skeleton (Wolf3D)";
        Height 64;
    }
    States
    {
        Spawn:
            W3CS A -1;
            Stop;
    }
}

class W3DSkeletonFloor  :   DeadMarine
{
    Default
    {
        Tag "Skeleton (Wolf3D)";
    }
    States
    {
        Spawn:
            SKLF A -1;
            Stop;
    }
}

class W3DBonePile  :   DeadMarine
{
    Default
    {
        Tag "Bone Pile (Wolf3D)";
    }
    States
    {
        Spawn:
            SKLP A -1;
            Stop;
    }
}