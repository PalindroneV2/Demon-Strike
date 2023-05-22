version "4.8.2"

#include "scripts/actors/W3DNPCS.zs"
#include "scripts/actors/W3DDECO.zs"
#include "scripts/actors/Harbinger.zs"
#include "scripts/actors/Weapons.zs"
#include "scripts/actors/HealthArmor.zs"

class DoomPlayerNew : DoomPlayer replaces DoomPlayer
{
    Default
    {
        Player.StartItem    "Handgun";
        Player.StartItem    "Fist";
        Player.StartItem    "Clip", 50;
    }
}