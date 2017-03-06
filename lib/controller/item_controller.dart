import '../glory_backend.dart';

class ItemController extends HTTPController {
  @httpGet
  Future<Response> getItems() async {
    return new Response.ok(ItemController.items);
  }

  static List items = [
    {
      "name": "Halcyon Potion",
      "aliases": ["*1000_Item_HalcyonPotion*", "Mulled Wine"],
      "cost": 25,
      "description": "Consume: Restore 80 health and 40 energy instantly, then 200 health & 65 energy over 25 seconds.",
      "types": ["other"],
      "tier": 1
    },
    {
      "name": "Weapon Blade",
      "aliases": ["*1002_Item_WeaponBlade*", "Weapon Blade"],
      "cost": 300,
      "description": "+15 Weapon Power",
      "types": ["weapon"],
      "tier": 1
    },
    {
      "name": "Crystal Bit",
      "aliases": ["*1003_Item_CrystalBit*", "Crystal1"],
      "cost": 300,
      "description": "+20 Crystal Power",
      "types": ["crystal"],
      "tier": 1
    },
    {
      "name": "Swift Shooter",
      "aliases": ["*1004_Item_SwiftShooter*", "AttackSpeed1"],
      "cost": 300,
      "description": "+20% Attack Speed",
      "types": ["weapon"],
      "tier": 1
    },
    {
      "name": "Six Sins",
      "aliases": ["*1005_Item_SixSins*", "Six Sins"],
      "cost": 650,
      "description": "+30 Weapon Power",
      "types": ["weapon"],
      "tier": 2
    },
    {
      "name": "Eclipse Prism",
      "aliases": ["*1009_Item_EclipsePrism*", "Crystal2"],
      "cost": 650,
      "description": "+35 Crystal Power",
      "types": ["crystal"],
      "tier": 2
    },
    {
      "name": "Blazing Salvo",
      "aliases": ["*1010_Item_BlazingSalvo*", "AttackSpeed2"],
      "cost": 700,
      "description": "+35% Attack Speed",
      "types": ["weapon"],
      "tier": 2
    },
    {
      "name": "Sorrowblade",
      "aliases": ["*1012_Item_Sorrowblade*", "Weapon3"],
      "cost": 3100,
      "description": "+150 Weapon Power",
      "types": ["weapon"],
      "tier": 3
    },{
      "name": "Shatterglass",
      "aliases": ["*1013_Item_Shatterglass*", "Crystal3"],
      "cost": 3000,
      "description": "+150 Crystal Power",
      "types": ["crystal"],
      "tier": 3
    },
    {
      "name": "Tornado Trigger",
      "aliases": ["*1014_Item_TornadoTrigger*", "Tornado Trigger"],
      "cost": 2600,
      "description": """+75% Attack Speed
+20% Critical Chance
+20% Critical Damage""",
      "types": ["weapon"],
      "tier": 3
    },
    {
      "name": "Oakheart",
      "aliases": ["*1015_Item_Oakheart*", "Oakheart"],
      "cost": 300,
      "description": "+200 Max Health",
      "types": ["defense"],
      "tier": 1
    },
    {
      "name": "Dragonheart",
      "aliases": ["*1016_Item_Dragonheart*", "Health2"],
      "cost": 650,
      "description": "+400 Max Health",
      "types": ["defense"],
      "tier": 2
    },
    {
      "name": "Light Armor",
      "aliases": ["*1017_Item_LightArmor*", "Light Armor"],
      "cost": 250,
      "description": """+40 Armor
+10 Shield""",
      "types": ["defense"],
      "tier": 1
    },
    {
      "name": "Coat of Plates",
      "aliases": ["*1022_Item_CoatOfPlates*", "Armor2"],
      "cost": 800,
      "description": """+75 Armor
+30 Shield""",
      "types": ["defense"],
      "tier": 2
    },
    {
      "name": "Metal Jacket",
      "aliases": ["*1024_Item_MetalJacket*", "Armor3"],
      "cost": 2100,
      "description": """+170 Armor
+35 Shield""",
      "types": ["defense"],
      "tier": 3
    },
    {
      "name": "Energy Battery",
      "aliases": ["*1025_Item_EnergyBattery*", "Steam Battery"],
      "cost": 300,
      "description": """+150 Max Energy
+2.5 Energy Recharge""",
      "types": ["crystal", "support"],
      "tier": 1
    },
    {
      "name": "Hourglass",
      "aliases": ["*1026_Item_Hourglass*", "Cooldown1"],
      "cost": 250,
      "description": """+15% Cooldown Speed
+1.5 Energy Recharge""",
      "types": ["crystal", "support"],
      "tier": 1
    },
    {
      "name": "Void Battery",
      "aliases": ["*1027_Item_VoidBattery*", "Void Battery"],
      "cost": 700,
      "description": """+250 Max Energy
+4 Energy Recharge""",
      "types": ["crystal", "support"],
      "tier": 2
    },
    {
      "name": "Chronograph",
      "aliases": ["*1028_Item_Chronograph*", "Cogwheel"],
      "cost": 800,
      "description": """+25% Cooldown Speed
+2.5 Energy Recharge""",
      "types": ["crystal", "support"],
      "tier": 2
    },
    {
      "name": "Clockwork",
      "aliases": ["*1029_Item_Clockwork*", "Clockwork"],
      "cost": 2500,
      "description": """Passive: Amplify Crystal Power by 30%

+40% Cooldown Speed
+250 Max Energy
+7.5 Energy Recharge""",
      "types": ["crystal"],
      "tier": 3
    },
    {
      "name": "Sprint Boots",
      "aliases": ["*1030_Item_SprintBoots*", "Boots1"],
      "cost": 300,
      "description": """Passive: +0.4 move speed.

Activate: Sprint for 1.5 seconds (150s cooldown).""",
      "types": ["other"],
      "tier": 1
    },
    {
      "name": "Travel Boots",
      "aliases": ["*1032_Item_TravelBoots*", "Boots2"],
      "cost": 1000,
      "description": """Passive: +0.4 move speed. (Does not stack with other boots.)

Passive (Travel): +1 more speed when not in combat.

Activate: Sprint for 2 seconds (90s cooldown).

+100 Max Health""",
      "types": ["other"],
      "tier": 2
    },
    {
      "name": "Serpent Mask",
      "aliases": ["*1034_Item_SerpentMask*", "Serpent Mask"],
      "cost": 2800,
      "description": """Passive: Your next 600-1200 (level 1-12) points of weapon damage to enemy heroes has +25% lifesteal, recharges over 40 seconds.
Passive: Barbed Needle

+85 Weapon Power
+10% Weapon Lifesteal""",
      "types": ["weapon"],
      "tier": 3
    },
    {
      "name": "Tension Bow",
      "aliases": ["*1035_Item_TensionBow*", "Tension Bow"],
      "cost": 2300,
      "description": """
+8% Armor Pierce
+45 Weapon Power

Passive: Every 6 seconds, your next basic attack will deal 180 bonus damage.""",
      "types": ["weapon"],
      "tier": 3
    },
    {
      "name": "Flare",
      "aliases": ["*1038_Item_Flare*", "Flare"],
      "cost": 25,
      "description": "Consume: Reveal an area for 5 seconds. Can see over walls, into brush, and stealthed units. Scout Traps within this area are permanently revealed.",
      "types": ["other"],
      "tier": 1
    },
    {
      "name": "Bonesaw",
      "aliases": ["*1039_Item_Bonesaw*", "Armor Shredder"],
      "cost": 2700,
      "description": """On Hit: Your basic attacks shred 6% of the target's armor for 3 seconds. Max 8 stacks.

+15 Weapon Power
+50% Attack Speed""",
      "types": ["weapon"],
      "tier": 3
    },
    {
      "name": "Minion Candy",
      "aliases": ["*1041_Item_MinionCandy*", "Minion Candy"],
      "cost": 50,
      "description": "Consume: Empowers nearby friendly minions for 60 seconds and friendly jungle bosses for 30 seconds.",
      "types": ["other"],
      "tier": 1
    },
    {
      "name": "Shiversteel",
      "aliases": ["*1042_Item_Shiversteel*", "Shiversteel"],
      "cost": 1450,
      "description": """Activate: For the next 4 (6 if you are melee) seconds, your basic attacks slow the target by 40% for 1.2 seconds. (18s cooldown)

+500 Max Health""",
      "types": ["other"],
      "tier": 3
    },
    {
      "name": "Reflex Block",
      "aliases": ["*1043_Item_ReflexBlock*", "Reflex Block"],
      "cost": 700,
      "description": """Activate: Gain a barrier worth 25% of your missing health and block all debuffs for 1 second. (45s cooldown)
Can activate while stunned.

+200 Max Health""",
      "types": ["defense"],
      "tier": 2
    },
    {
      "name": "Frostburn",
      "aliases": ["*1044_Item_Frostburn*", "Frostburn"],
      "cost": 2600,
      "description": """Passive: Dealing crystal damage to enemy heroes will also slow for 1.5 seconds; target can't be affected by Frostburn again for 2 seconds thereafter. Slows by 10% +1% per 10 crystal power. Max 35% slow.

+100 Crystal Power""",
      "types": ["crystal"],
      "tier": 3
    },
    {
      "name": "Fountain of Renewal",
      "aliases": ["*1045_Item_FountainOfRenewal*", "Fountain of Renewal"],
      "cost": 2300,
      "description": """Passive: Lifespring
Active: Heals you and nearby allies for 2 health for each % missing health per second for 3 seconds. (60s cooldown)

+200 Max Health
+75 Shield
+30 Armor""",
      "types": ["support"],
      "tier": 3
    },
    {
      "name": "Crucible",
      "aliases": ["*1046_Item_Crucible*", "Crucible"],
      "cost": 1850,
      "description": """Activate: Trigger Reflex Block for you and nearby teammates. (45s cooldown)

+600 Max Health""",
      "types": ["support", "defense"],
      "tier": 3
    },
    {
      "name": "Journey Boots",
      "aliases": ["*1047_Item_JourneyBoots*", "Boots3"],
      "cost": 1900,
      "description": """Passive: +0.6 move speed. (Does not stack with other boots.)

Passive: Travel.

Activate: Sprint for 2 seconds (60s cooldown). Damaging heroes instantly sets the cooldown to 12 seconds if it is above it.

+250 Max Health""",
      "types": ["other"],
      "tier": 3
    },
    {
      "name": "Tyrant's Monocle",
      "aliases": ["*1049_Item_TyrantsMonocle*", "Critical"],
      "cost": 2750,
      "description": """+40% Critical Chance
+20% Critical Damage
+50 Weapon Power""",
      "types": ["weapon"],
      "tier": 3
    },
    {
      "name": "Aftershock",
      "aliases": ["*1050_Item_Aftershock*", "Aftershock"],
      "cost": 2400,
      "description": """After using an ability, your next basic attack deals 15% of your target's max health as damage with +50% lifesteal. Max 400 damage vs non-heroes. 1.5 second cooldown.

+25% Cooldown Speed
+2.5 Energy Recharge
+35 Crystal Power""",
      "types": ["crystal"],
      "tier": 3
    },
    {
      "name": "Weapon Infusion",
      "aliases": ["*1052_Item_WeaponInfusion*"],
      "cost": 500,
      "description": "Consume: Temporarily gain 20-60 weapon power, 8%-24% attack speed, 10-30 armor & shield based on your level. Lasts 2.5 minutes.",
      "types": ["weapon"],
      "tier": 1
    },
    {
      "name": "Crystal Infusion",
      "aliases": ["*1053_Item_CrystalInfusion*"],
      "cost": 500,
      "description": "Consume: Temporarily gain 20-60 crystal power, 12%-36% cooldown acceleration, and 10-30 armor & shield based on your level. Lasts 2.5 minutes.",
      "types": ["crystal"],
      "tier": 1
    },
    {
      "name": "Scout Trap",
      "aliases": ["*1054_Item_ScoutTrap*", "Scout Trap"],
      "cost": 50,
      "description": "Consume: Place a trap at your feet. Trap grants vision & will explode on contact with enemy heroes after a short delay. Deals splash damage and reveals affected enemies for 5 seconds.",
      "types": ["support"],
      "tier": 1
    },
    {
      "name": "Broken Myth",
      "aliases": ["*1055_Item_BrokenMyth*", "Broken Myth"],
      "cost": 2150,
      "description": """Passive: Amplify all crystal damage by 4% for each second you are in combat against heroes. After 5 seconds, you lose a stack each second. Max 9 stacks.

+10% Shield Pierce
+70 Crystal Power""",
      "types": ["crystal"],
      "tier": 3
    },
    {
      "name": "War Treads",
      "aliases": ["*1056_Item_WarTreads*", "War Treads"],
      "cost": 25,
      "description": """Passive: +0.4 move speed. (Does not stack with other boots.)

Passive: Travel.

Activate: Grant a sprint to all nearby teammates for 2 seconds (60s cooldown).

+500 Max Health""",
      "types": ["support"],
      "tier": 3
    },
    {
      "name": "Atlas Pauldron",
      "aliases": ["*1057_Item_AtlasPauldron*", "Atlas Pauldron"],
      "cost": 1900,
      "description": """+85 Armor
+35 Shield

Active: Reduces attack speed of nearby enemies by 65% for 5 seconds in a 4-meter range. Does not reduce below the base attack speed animation. (15s cooldown)""",
      "types": ["defense", "support"],
      "tier": 3
    },
    {
      "name": "Book of Eulogies",
      "aliases": ["*1059_Item_BookOfEulogies*"],
      "cost": 300,
      "description": """+5 Weapon Power

Passive: Restores 30 health whenever you kill a minion or monster (60 if using a melee default attack).""",
      "types": ["weapon"],
      "tier": 1
    },
    {
      "name": "Barbed Needle",
      "aliases": ["*1060_Item_BarbedNeedle*", "BarbedNeedle"],
      "cost": 800,
      "description": """+12 Weapon Power
+10% Weapon Lifesteal

Passive: Restores 40 health whenever you kill an enemy (85 if using a melee default attack).""",
      "types": ["weapon"],
      "tier": 2
    },
    {
      "name": "Light Shield",
      "aliases": ["*1061_Item_LightShield*", "Light Shield"],
      "cost": 250,
      "description": """+40 Shield
+10 Armor""",
      "types": ["defense"],
      "tier": 1
    },
    {
      "name": "Kinetic Shield",
      "aliases": ["*1062_Item_KineticShield*", "Shield 2"],
      "cost": 800,
      "description": """+75 Shield
+30 Armor""",
      "types": ["defense"],
      "tier": 2
    },
    {
      "name": "Aegis",
      "aliases": ["*1063_Item_Aegis*"],
      "cost": 2250,
      "description": """Activate: Reflex Block (35s cooldown)

          +125 Shield
          +30 Armor
          +200 Max Health""",
      "types": ["defense"],
      "tier": 3
    },
    {
      "name": "Lifespring",
      "aliases": ["*1064_Item_Lifespring*", "Lifewell"],
      "cost": 800,
      "description": """Passive: Regenerates 2.5% of your missing health per second whenever you are out of combat with enemy heroes for 5 seconds.

+200 Max Health""",
      "types": ["defense"],
      "tier": 2
    },
    {
      "name": "Heavy Steel",
      "aliases": ["*1065_Item_HeavySteel*", "Heavy Steel"],
      "cost": 1150,
      "description": "+55 Weapon Power",
      "types": ["weapon"],
      "tier": 2
    },
    {
      "name": "Piercing Spear",
      "aliases": ["*1066_Item_PiercingSpear*", "PiercingSpear"],
      "cost": 900,
      "description": """+8% Armor Pierce
+15 Weapon Power""",
      "types": ["weapon"],
      "tier": 2
    },
    {
      "name": "Breaking Point",
      "aliases": ["*1067_Item_BreakingPoint*", "BreakingPoint"],
      "cost": 2600,
      "description": """Passive: Gain 10 weapon power for every 140 Weapon damage dealt to enemy heroes (+5 damage needed for each stack thereafter). 25 stacks max. Decays 2 stacks per second after you’ve stopped stacking for 2 seconds.

+35% Attack Speed
+55 Weapon Power""",
      "types": ["weapon"],
      "tier": 3
    },
    {
      "name": "Lucky Strike",
      "aliases": ["*1068_Item_LuckyStrike*", "LuckyStrike"],
      "cost": 900,
      "description": """+20% Critical Chance
+12% Critical Damage""",
      "types": ["weapon"],
      "tier": 2
    },
    {
      "name": "Alternating Current",
      "aliases": ["*1069_Item_AlternatingCurrent*", "Crystal Matrix"],
      "cost": 2800,
      "description": """Every other basic attack deals 70% of your crystal power as bonus damage.

+60 crystal power
+65% attack speed""",
      "types": ["crystal"],
      "tier": 3
    },
    {
      "name": "Piercing Shard",
      "aliases": ["*1070_Item_PiercingShard*", "PiercingShard"],
      "cost": 900,
      "description": """+8% Shield Pierce
+20 Crystal Power""",
      "types": ["crystal"],
      "tier": 2
    },
    {
      "name": "Eve of Harvest",
      "aliases": ["*1071_Item_EveOfHarvest*", "EveOfHarvest"],
      "cost": 2600,
      "description": """Passive: Your next 600-1200 (level 1-12) points of crystal damage to enemy heroes has +25% lifesteal, recharges over 40 seconds.

+10% Crystal Lifesteal
+55 Crystal Power
+250 Max Energy
+5 Energy Recharge""",
      "types": ["crystal"],
      "tier": 3
    },
    {
      "name": "Heavy Prism",
      "aliases": ["*1072_Item_HeavyPrism*", "Heavy Prism"],
      "cost": 1050,
      "description": "+50 Crystal Power",
      "types": ["crystal"],
      "tier": 2
    },
    {
      "name": "Ironguard Contract",
      "aliases": ["*1073_Item_IronguardContract*", "IronguardContract"],
      "cost": 300,
      "description": """Passive: When a nearby ally kills a jungle monster or large lane minion, it heals you and your ally by 75 health each and 10 energy each.

Range: 14m""",
      "types": ["support"],
      "tier": 1
    },
    {
      "name": "Stormguard Banner",
      "aliases": ["*1074_Item_StormguardBanner*", "StormguardBanner"],
      "cost": 850,
      "description": """Passive: Basic attacks deal 30-80 (level 1-12) bonus true damage per second to non-heroes, 20% to heroes.

+30% cooldown speed
+4 energy recharge
+200 Health""",
      "types": ["support"],
      "tier": 2
    },
    {
      "name": "Contraption",
      "aliases": ["*1079_Item_Contraption*", "Contraption"],
      "cost": 2100,
      "description": """Active: Target yourself to place a Scout Trap. Target the ground farther away to fire a Flare. 3 charges max. 20s per charge.

+350 Health
+40% Cooldown Speed
+3 Energy Recharge""",
      "types": ["support"],
      "tier": 3
    },
    {
      "name": "Minion's Foot",
      "aliases": ["*1080_Item_MinionsFoot*", "MinionsFoot"],
      "cost": 300,
      "description": """+10% Critical Chance
+10% Critical Damage

Passive: After buying this item, your very first attack on an enemy hero will crit.""",
      "types": ["weapon"],
      "tier": 1
    },
    {
      "name": "Protector Contract",
      "aliases": ["*1084_Item_ProtectorContract*", "Protector Contract"],
      "cost": 300,
      "description": """Activate: Grants a 120 health barrier to all nearby allied heroes for 2 seconds. 5s cooldown. 2 max charges, 15s per charge.

Range: 8m""",
      "types": ["support"],
      "tier": 1
    },
    {
      "name": "Halcyon Chargers",
      "aliases": ["*1087_Item_HalcyonChargers*", "Halcyon Chargers"],
      "cost": 2300,
      "description": """Passive: +0.5 move speed. (Does not stack with other boots.)

Passive: Travel.

Activate: Sprint for 3 seconds (50s cooldown).

+200 Health
+15% Cooldown Speed
+250 Energy
+4 Energy Recharge""",
      "types": ["other"],
      "tier": 3
    },
    {
      "name": "Flare Gun",
      "aliases": ["*1088_Item_Flaregun*", "Flaregun"],
      "cost": 600,
      "description": """Activate: Fire a Flare at target location. 5s cooldown. 2 charges max. 20s per charge.

+250 Health""",
      "types": ["support"],
      "tier": 2
    },
    {
      "name": "Stormcrown",
      "aliases": ["*1090_Item_Stormcrown*", "Stormcrown"],
      "cost": 2200,
      "description": """Passive: Basic attacks deal 60-160 (level 1-12) bonus true damage per second to non-heroes, 20% to heroes

+30% Cooldown Speed
+4 Energy Recharge
+200 Health""",
      "types": ["other"],
      "tier": 3
    },
    {
      "name": "Poisoned Shiv",
      "aliases": ["*1092_Item_PoisonedShiv*", "PoisonedShiv"],
      "cost": 25,
      "description": """Passive: Every 3 basic attacks will apply a mortal wound for 2s.

Passive: Barbed Needle.

+35 Weapon Power
+40% Attack Speed
+10% Weapon Lifesteal""",
      "types": ["weapon"],
      "tier": 3
    },
    {
      "name": "Nullwave Gauntlet",
      "aliases": ["*1095_Item_NullwaveGauntlet*", "NullwaveGauntlet"],
      "cost": 2400,
      "description": """Activate: Fires a blast at an enemy hero which explodes shortly after hitting its target, item silencing for 4s and dealing 50-100 +15% max health in crystal damage (40s cooldown).

  +400 Max Health
  +25% Cooldown Speed
  +4 Energy Recharge
      """,
      "types": ["support"],
      "tier": 3
    },
    {
      "name": "Echo",
      "aliases": ["*1097_Item_Echo*", "Echo"],
      "cost": 25,
      "description": """Activate: The last ability to be put on cooldown is refreshed (115% of ability's cooldown + 30s cooldown).

+250 Max Energy
""",
      "types": [],
      "tier": 1
    },
    {
      "name": "Slumbering Husk",
      "aliases": ["*1105_Item_SlumberingHusk*", "SlumberingHusk"],
      "cost": 1600,
      "description": """Passive: Taking 20% of your max health in damage over 1.5s fortifies your remaining health for 1.5s (45s cooldown)

+400 Max Health""",
      "types": ["defense"],
      "tier": 3
    }
  ];
}