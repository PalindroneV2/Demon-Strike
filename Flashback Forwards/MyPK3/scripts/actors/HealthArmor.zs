class GreenArmor35 : GreenArmor
{
    Default
    {
		Tag "Security Armor";
        //$Category "Health and Armor";
        Inventory.PickupMessage "Picked up the Security Armor" ;
        Armor.SavePercent 35;
    }
}

class BlueArmor50 : BlueArmor
{
    Default
    {
		Tag "Combat Armor";
        //$Category "Health and Armor";
        Inventory.PickupMessage "Picked up the Combat Armor" ;
    }
}

class GreenArmorSmall : BasicArmorPickup
{
    Default
    {
		Tag "Light Security Armor";
        //$Category "Health and Armor";
        Radius 20;
        Height 16;
        Inventory.PickupMessage "Picked up the Light Security Armor" ;
        Inventory.Icon "ARM3A0";
        Armor.SavePercent 35;
        Armor.SaveAmount 50;
    }
    States
    {
        Spawn:
            ARM3 A 6;
            ARM3 B 7 Bright;
            Loop;
    }
}

class BlueArmorSmall : BasicArmorPickup
{
    Default
    {
		Tag "Light Combat Armor";
        //$Category "Health and Armor";
        Radius 20;
        Height 16;
        Inventory.PickupMessage "Picked up the Light Combat Armor" ;
        Inventory.Icon "ARM4A0";
        Armor.SavePercent 50;
        Armor.SaveAmount 50;
    }
    States
    {
        Spawn:
            ARM4 A 6;
            ARM4 B 7 Bright;
            Loop;
    }
}

class RedArmor : BasicArmorPickup
{
    Default
    {
		Tag "Advanced Armor";
        //$Category "Health and Armor";
        Radius 20;
        Height 16;
        Inventory.PickupMessage "Picked up the Advanced Armor" ;
        Inventory.Icon "ARM5A0";
        Armor.SavePercent 75;
        Armor.SaveAmount 200;
    }
    States
    {
        Spawn:
            ARM5 A 6;
            ARM5 B 7 Bright;
            Loop;
    }
}

class RedArmorSmall : BasicArmorPickup
{
    Default
    {
		Tag "Light Advanced Armor";
        //$Category "Health and Armor";
        Radius 20;
        Height 16;
        Inventory.PickupMessage "Picked up the Light Advanced Armor" ;
        Inventory.Icon "ARM6A0";
        Armor.SavePercent 75;
        Armor.SaveAmount 100;
    }
    States
    {
        Spawn:
            ARM6 A 6;
            ARM6 B 7 Bright;
            Loop;
    }
}

class EnchantedArmor : BasicArmorPickup
{
    Default
    {
		Tag "Enchanted Armor";
        //$Category "Health and Armor";
        Radius 20;
        Height 16;
        Inventory.PickupMessage "Behold! You picked up the Encahnted Armor!" ;
        Inventory.Icon "ARM7A0";
        Armor.SavePercent 100;
        Armor.SaveAmount 200;
    }
    States
    {
        Spawn:
            ARM7 A 6;
            ARM7 B 7 Bright;
            Loop;
    }
}

class  HalfHeal : Health
{
    Default
    {
		Tag "Surgery Kit";
        //$Category "Health and Armor";
        Inventory.Amount 50;
        Inventory.PickupMessage "Picked up a Surgery Kit.";
        Health.LowMessage 25, "Picked up an Surgery Kit that you REALLY need!";
    }
    States
    {
        Spawn:
            HHEL A -1;
            Stop;
    }
}

class  FullHeal : Health
{
    Default
    {
		Tag "Full Recovery Kit";
        //$Category "Health and Armor";
        Inventory.Amount 100;
        Inventory.PickupMessage "Picked up a Full Recovery Kit.";
        Health.LowMessage 25, "Picked up an Full Recovery Kit that you REALLY need!";
    }
    States
    {
        Spawn:
            FHEL A -1;
            Stop;
    }
}