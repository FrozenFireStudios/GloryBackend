import 'harness/app.dart';

Future main() async {
  TestApplication app = new TestApplication();

  List<Map> itemDicts = [
    {
      "id": 1,
      "name": "Halcyon Potion",
      "cost": 25,
      "description": "Consume: Restore 80 health and 40 energy instantly, then 200 health & 65 energy over 25 seconds.",
      "tier": 1,
      "aliases": [
        "*1000_Item_HalcyonPotion*",
        "Mulled Wine"
      ],
      "types": [
        "other"
      ]
    },
    {
      "id": 2,
      "name": "Weapon Blade",
      "cost": 300,
      "description": "+15 Weapon Power",
      "tier": 1,
      "aliases": [
        "*1002_Item_WeaponBlade*",
        "Weapon Blade"
      ],
      "types": [
        "weapon"
      ]
    },
    {
      "id": 3,
      "name": "Crystal Bit",
      "cost": 300,
      "description": "+20 Crystal Power",
      "tier": 1,
      "aliases": [
        "*1003_Item_CrystalBit*",
        "Crystal1"
      ],
      "types": [
        "crystal"
      ]
    },
    {
      "id": 4,
      "name": "Swift Shooter",
      "cost": 300,
      "description": "+20% Attack Speed",
      "tier": 1,
      "aliases": [
        "*1004_Item_SwiftShooter*",
        "AttackSpeed1"
      ],
      "types": [
        "weapon"
      ]
    },
    {
      "id": 5,
      "name": "Six Sins",
      "cost": 650,
      "description": "+30 Weapon Power",
      "tier": 2,
      "aliases": [
        "*1005_Item_SixSins*",
        "Six Sins"
      ],
      "types": [
        "weapon"
      ]
    },
    {
      "id": 6,
      "name": "Eclipse Prism",
      "cost": 650,
      "description": "+35 Crystal Power",
      "tier": 2,
      "aliases": [
        "*1009_Item_EclipsePrism*",
        "Crystal2"
      ],
      "types": [
        "crystal"
      ]
    },
    {
      "id": 7,
      "name": "Blazing Salvo",
      "cost": 700,
      "description": "+35% Attack Speed",
      "tier": 2,
      "aliases": [
        "*1010_Item_BlazingSalvo*",
        "AttackSpeed2"
      ],
      "types": [
        "weapon"
      ]
    },
    {
      "id": 8,
      "name": "Sorrowblade",
      "cost": 3100,
      "description": "+150 Weapon Power",
      "tier": 3,
      "aliases": [
        "*1012_Item_Sorrowblade*",
        "Weapon3"
      ],
      "types": [
        "weapon"
      ]
    },
    {
      "id": 9,
      "name": "Shatterglass",
      "cost": 3000,
      "description": "+150 Crystal Power",
      "tier": 3,
      "aliases": [
        "*1013_Item_Shatterglass*",
        "Crystal3"
      ],
      "types": [
        "crystal"
      ]
    },
    {
      "id": 10,
      "name": "Tornado Trigger",
      "cost": 2600,
      "description": "+75% Attack Speed\n+20% Critical Chance\n+20% Critical Damage",
      "tier": 3,
      "aliases": [
        "*1014_Item_TornadoTrigger*",
        "Tornado Trigger"
      ],
      "types": [
        "weapon"
      ]
    },
    {
      "id": 11,
      "name": "Oakheart",
      "cost": 300,
      "description": "+200 Max Health",
      "tier": 1,
      "aliases": [
        "*1015_Item_Oakheart*",
        "Oakheart"
      ],
      "types": [
        "defense"
      ]
    },
    {
      "id": 12,
      "name": "Dragonheart",
      "cost": 650,
      "description": "+400 Max Health",
      "tier": 2,
      "aliases": [
        "*1016_Item_Dragonheart*",
        "Health2"
      ],
      "types": [
        "defense"
      ]
    },
    {
      "id": 13,
      "name": "Light Armor",
      "cost": 250,
      "description": "+40 Armor\n+10 Shield",
      "tier": 1,
      "aliases": [
        "*1017_Item_LightArmor*",
        "Light Armor"
      ],
      "types": [
        "defense"
      ]
    },
    {
      "id": 14,
      "name": "Coat of Plates",
      "cost": 800,
      "description": "+75 Armor\n+30 Shield",
      "tier": 2,
      "aliases": [
        "*1022_Item_CoatOfPlates*",
        "Armor2"
      ],
      "types": [
        "defense"
      ]
    },
    {
      "id": 15,
      "name": "Metal Jacket",
      "cost": 2100,
      "description": "+170 Armor\n+35 Shield",
      "tier": 3,
      "aliases": [
        "*1024_Item_MetalJacket*",
        "Armor3"
      ],
      "types": [
        "defense"
      ]
    },
    {
      "id": 16,
      "name": "Energy Battery",
      "cost": 300,
      "description": "+150 Max Energy\n+2.5 Energy Recharge",
      "tier": 1,
      "aliases": [
        "*1025_Item_EnergyBattery*",
        "Steam Battery"
      ],
      "types": [
        "crystal",
        "support"
      ]
    },
    {
      "id": 17,
      "name": "Hourglass",
      "cost": 250,
      "description": "+15% Cooldown Speed\n+1.5 Energy Recharge",
      "tier": 1,
      "aliases": [
        "*1026_Item_Hourglass*",
        "Cooldown1"
      ],
      "types": [
        "crystal",
        "support"
      ]
    },
    {
      "id": 18,
      "name": "Void Battery",
      "cost": 700,
      "description": "+250 Max Energy\n+4 Energy Recharge",
      "tier": 2,
      "aliases": [
        "*1027_Item_VoidBattery*",
        "Void Battery"
      ],
      "types": [
        "crystal",
        "support"
      ]
    },
    {
      "id": 19,
      "name": "Chronograph",
      "cost": 800,
      "description": "+25% Cooldown Speed\n+2.5 Energy Recharge",
      "tier": 2,
      "aliases": [
        "*1028_Item_Chronograph*",
        "Cogwheel"
      ],
      "types": [
        "crystal",
        "support"
      ]
    },
    {
      "id": 20,
      "name": "Clockwork",
      "cost": 2500,
      "description": "Passive: Amplify Crystal Power by 30%\n\n+40% Cooldown Speed\n+250 Max Energy\n+7.5 Energy Recharge",
      "tier": 3,
      "aliases": [
        "*1029_Item_Clockwork*",
        "Clockwork"
      ],
      "types": [
        "crystal"
      ]
    },
    {
      "id": 21,
      "name": "Sprint Boots",
      "cost": 300,
      "description": "Passive: +0.4 move speed.\n\nActivate: Sprint for 1.5 seconds (150s cooldown).",
      "tier": 1,
      "aliases": [
        "*1030_Item_SprintBoots*",
        "Boots1"
      ],
      "types": [
        "other"
      ]
    },
    {
      "id": 22,
      "name": "Travel Boots",
      "cost": 1000,
      "description": "Passive: +0.4 move speed. (Does not stack with other boots.)\n\nPassive (Travel): +1 more speed when not in combat.\n\nActivate: Sprint for 2 seconds (90s cooldown).\n\n+100 Max Health",
      "tier": 2,
      "aliases": [
        "*1032_Item_TravelBoots*",
        "Boots2"
      ],
      "types": [
        "other"
      ]
    },
    {
      "id": 23,
      "name": "Serpent Mask",
      "cost": 2800,
      "description": "Passive: Your next 600-1200 (level 1-12) points of weapon damage to enemy heroes has +25% lifesteal, recharges over 40 seconds.\nPassive: Barbed Needle\n\n+85 Weapon Power\n+10% Weapon Lifesteal",
      "tier": 3,
      "aliases": [
        "*1034_Item_SerpentMask*",
        "Serpent Mask"
      ],
      "types": [
        "weapon"
      ]
    },
    {
      "id": 24,
      "name": "Tension Bow",
      "cost": 2300,
      "description": "+8% Armor Pierce\n+45 Weapon Power\n\nPassive: Every 6 seconds, your next basic attack will deal 180 bonus damage.",
      "tier": 3,
      "aliases": [
        "*1035_Item_TensionBow*",
        "Tension Bow"
      ],
      "types": [
        "weapon"
      ]
    },
    {
      "id": 25,
      "name": "Flare",
      "cost": 25,
      "description": "Consume: Reveal an area for 5 seconds. Can see over walls, into brush, and stealthed units. Scout Traps within this area are permanently revealed.",
      "tier": 1,
      "aliases": [
        "*1038_Item_Flare*",
        "Flare"
      ],
      "types": [
        "other"
      ]
    },
    {
      "id": 26,
      "name": "Bonesaw",
      "cost": 2700,
      "description": "On Hit: Your basic attacks shred 6% of the target's armor for 3 seconds. Max 8 stacks.\n\n+15 Weapon Power\n+50% Attack Speed",
      "tier": 3,
      "aliases": [
        "*1039_Item_Bonesaw*",
        "Armor Shredder"
      ],
      "types": [
        "weapon"
      ]
    },
    {
      "id": 27,
      "name": "Minion Candy",
      "cost": 50,
      "description": "Consume: Empowers nearby friendly minions for 60 seconds and friendly jungle bosses for 30 seconds.",
      "tier": 1,
      "aliases": [
        "*1041_Item_MinionCandy*",
        "Minion Candy"
      ],
      "types": [
        "other"
      ]
    },
    {
      "id": 28,
      "name": "Shiversteel",
      "cost": 1450,
      "description": "Activate: For the next 4 (6 if you are melee) seconds, your basic attacks slow the target by 40% for 1.2 seconds. (18s cooldown)\n\n+500 Max Health",
      "tier": 3,
      "aliases": [
        "*1042_Item_Shiversteel*",
        "Shiversteel"
      ],
      "types": [
        "other"
      ]
    },
    {
      "id": 29,
      "name": "Reflex Block",
      "cost": 700,
      "description": "Activate: Gain a barrier worth 25% of your missing health and block all debuffs for 1 second. (45s cooldown)\nCan activate while stunned.\n\n+200 Max Health",
      "tier": 2,
      "aliases": [
        "*1043_Item_ReflexBlock*",
        "Reflex Block"
      ],
      "types": [
        "defense"
      ]
    },
    {
      "id": 30,
      "name": "Frostburn",
      "cost": 2600,
      "description": "Passive: Dealing crystal damage to enemy heroes will also slow for 1.5 seconds; target can't be affected by Frostburn again for 2 seconds thereafter. Slows by 10% +1% per 10 crystal power. Max 35% slow.\n\n+100 Crystal Power",
      "tier": 3,
      "aliases": [
        "*1044_Item_Frostburn*",
        "Frostburn"
      ],
      "types": [
        "crystal"
      ]
    },
    {
      "id": 31,
      "name": "Fountain of Renewal",
      "cost": 2300,
      "description": "Passive: Lifespring\nActive: Heals you and nearby allies for 2 health for each % missing health per second for 3 seconds. (60s cooldown)\n\n+200 Max Health\n+75 Shield\n+30 Armor",
      "tier": 3,
      "aliases": [
        "*1045_Item_FountainOfRenewal*",
        "Fountain of Renewal"
      ],
      "types": [
        "support"
      ]
    },
    {
      "id": 32,
      "name": "Crucible",
      "cost": 1850,
      "description": "Activate: Trigger Reflex Block for you and nearby teammates. (45s cooldown)\n\n+600 Max Health",
      "tier": 3,
      "aliases": [
        "*1046_Item_Crucible*",
        "Crucible"
      ],
      "types": [
        "support",
        "defense"
      ]
    },
    {
      "id": 33,
      "name": "Journey Boots",
      "cost": 1900,
      "description": "Passive: +0.6 move speed. (Does not stack with other boots.)\n\nPassive: Travel.\n\nActivate: Sprint for 2 seconds (60s cooldown). Damaging heroes instantly sets the cooldown to 12 seconds if it is above it.\n\n+250 Max Health",
      "tier": 3,
      "aliases": [
        "*1047_Item_JourneyBoots*",
        "Boots3"
      ],
      "types": [
        "other"
      ]
    },
    {
      "id": 34,
      "name": "Tyrant's Monocle",
      "cost": 2750,
      "description": "+40% Critical Chance\n+20% Critical Damage\n+50 Weapon Power",
      "tier": 3,
      "aliases": [
        "*1049_Item_TyrantsMonocle*",
        "Critical"
      ],
      "types": [
        "weapon"
      ]
    },
    {
      "id": 35,
      "name": "Aftershock",
      "cost": 2400,
      "description": "After using an ability, your next basic attack deals 15% of your target's max health as damage with +50% lifesteal. Max 400 damage vs non-heroes. 1.5 second cooldown.\n\n+25% Cooldown Speed\n+2.5 Energy Recharge\n+35 Crystal Power",
      "tier": 3,
      "aliases": [
        "*1050_Item_Aftershock*",
        "Aftershock"
      ],
      "types": [
        "crystal"
      ]
    },
    {
      "id": 36,
      "name": "Weapon Infusion",
      "cost": 500,
      "description": "Consume: Temporarily gain 20-60 weapon power, 8%-24% attack speed, 10-30 armor & shield based on your level. Lasts 2.5 minutes.",
      "tier": 1,
      "aliases": [
        "*1052_Item_WeaponInfusion*"
      ],
      "types": [
        "weapon"
      ]
    },
    {
      "id": 37,
      "name": "Crystal Infusion",
      "cost": 500,
      "description": "Consume: Temporarily gain 20-60 crystal power, 12%-36% cooldown acceleration, and 10-30 armor & shield based on your level. Lasts 2.5 minutes.",
      "tier": 1,
      "aliases": [
        "*1053_Item_CrystalInfusion*"
      ],
      "types": [
        "crystal"
      ]
    },
    {
      "id": 38,
      "name": "Scout Trap",
      "cost": 50,
      "description": "Consume: Place a trap at your feet. Trap grants vision & will explode on contact with enemy heroes after a short delay. Deals splash damage and reveals affected enemies for 5 seconds.",
      "tier": 1,
      "aliases": [
        "*1054_Item_ScoutTrap*",
        "Scout Trap"
      ],
      "types": [
        "support"
      ]
    },
    {
      "id": 39,
      "name": "Broken Myth",
      "cost": 2150,
      "description": "Passive: Amplify all crystal damage by 4% for each second you are in combat against heroes. After 5 seconds, you lose a stack each second. Max 9 stacks.\n\n+10% Shield Pierce\n+70 Crystal Power",
      "tier": 3,
      "aliases": [
        "*1055_Item_BrokenMyth*",
        "Broken Myth"
      ],
      "types": [
        "crystal"
      ]
    },
    {
      "id": 40,
      "name": "War Treads",
      "cost": 25,
      "description": "Passive: +0.4 move speed. (Does not stack with other boots.)\n\nPassive: Travel.\n\nActivate: Grant a sprint to all nearby teammates for 2 seconds (60s cooldown).\n\n+500 Max Health",
      "tier": 3,
      "aliases": [
        "*1056_Item_WarTreads*",
        "War Treads"
      ],
      "types": [
        "support"
      ]
    },
    {
      "id": 42,
      "name": "Book of Eulogies",
      "cost": 300,
      "description": "+5 Weapon Power\n\nPassive: Restores 30 health whenever you kill a minion or monster (60 if using a melee default attack).",
      "tier": 1,
      "aliases": [
        "*1059_Item_BookOfEulogies*"
      ],
      "types": [
        "weapon"
      ]
    },
    {
      "id": 41,
      "name": "Atlas Pauldron",
      "cost": 1900,
      "description": "+85 Armor\n+35 Shield\n\nActive: Reduces attack speed of nearby enemies by 65% for 5 seconds in a 4-meter range. Does not reduce below the base attack speed animation. (15s cooldown)",
      "tier": 3,
      "aliases": [
        "*1057_Item_AtlasPauldron*",
        "Atlas Pauldron"
      ],
      "types": [
        "defense",
        "support"
      ]
    },
    {
      "id": 43,
      "name": "Barbed Needle",
      "cost": 800,
      "description": "+12 Weapon Power\n+10% Weapon Lifesteal\n\nPassive: Restores 40 health whenever you kill an enemy (85 if using a melee default attack).",
      "tier": 2,
      "aliases": [
        "*1060_Item_BarbedNeedle*",
        "BarbedNeedle"
      ],
      "types": [
        "weapon"
      ]
    },
    {
      "id": 44,
      "name": "Light Shield",
      "cost": 250,
      "description": "+40 Shield\n+10 Armor",
      "tier": 1,
      "aliases": [
        "*1061_Item_LightShield*",
        "Light Shield"
      ],
      "types": [
        "defense"
      ]
    },
    {
      "id": 46,
      "name": "Aegis",
      "cost": 2250,
      "description": "Activate: Reflex Block (35s cooldown)\n\n+125 Shield\n+30 Armor\n+200 Max Health",
      "tier": 3,
      "aliases": [
        "*1063_Item_Aegis*"
      ],
      "types": [
        "defense"
      ]
    },
    {
      "id": 49,
      "name": "Piercing Spear",
      "cost": 900,
      "description": "+8% Armor Pierce\n+15 Weapon Power",
      "tier": 2,
      "aliases": [
        "*1066_Item_PiercingSpear*",
        "PiercingSpear"
      ],
      "types": [
        "weapon"
      ]
    },
    {
      "id": 54,
      "name": "Eve of Harvest",
      "cost": 2600,
      "description": "Passive: Your next 600-1200 (level 1-12) points of crystal damage to enemy heroes has +25% lifesteal, recharges over 40 seconds.\n\n+10% Crystal Lifesteal\n+55 Crystal Power\n+250 Max Energy\n+5 Energy Recharge",
      "tier": 3,
      "aliases": [
        "*1071_Item_EveOfHarvest*",
        "EveOfHarvest"
      ],
      "types": [
        "crystal"
      ]
    },
    {
      "id": 55,
      "name": "Heavy Prism",
      "cost": 1050,
      "description": "+50 Crystal Power",
      "tier": 2,
      "aliases": [
        "*1072_Item_HeavyPrism*",
        "Heavy Prism"
      ],
      "types": [
        "crystal"
      ]
    },
    {
      "id": 63,
      "name": "Stormcrown",
      "cost": 2200,
      "description": "Passive: Basic attacks deal 60-160 (level 1-12) bonus true damage per second to non-heroes, 20% to heroes\n\n+30% Cooldown Speed\n+4 Energy Recharge\n+200 Health",
      "tier": 3,
      "aliases": [
        "*1090_Item_Stormcrown*",
        "Stormcrown"
      ],
      "types": [
        "other"
      ]
    },
    {
      "id": 64,
      "name": "Poisoned Shiv",
      "cost": 25,
      "description": "Passive: Every 3 basic attacks will apply a mortal wound for 2s.\n\nPassive: Barbed Needle.\n\n+35 Weapon Power\n+40% Attack Speed\n+10% Weapon Lifesteal",
      "tier": 3,
      "aliases": [
        "*1092_Item_PoisonedShiv*",
        "PoisonedShiv"
      ],
      "types": [
        "weapon"
      ]
    },
    {
      "id": 45,
      "name": "Kinetic Shield",
      "cost": 800,
      "description": "+75 Shield\n+30 Armor",
      "tier": 2,
      "aliases": [
        "*1062_Item_KineticShield*",
        "Shield 2"
      ],
      "types": [
        "defense"
      ]
    },
    {
      "id": 47,
      "name": "Lifespring",
      "cost": 800,
      "description": "Passive: Regenerates 2.5% of your missing health per second whenever you are out of combat with enemy heroes for 5 seconds.\n\n+200 Max Health",
      "tier": 2,
      "aliases": [
        "*1064_Item_Lifespring*",
        "Lifewell"
      ],
      "types": [
        "defense"
      ]
    },
    {
      "id": 50,
      "name": "Breaking Point",
      "cost": 2600,
      "description": "Test",
      "tier": 3,
      "aliases": [
        "*1067_Item_BreakingPoint*",
        "BreakingPoint"
      ],
      "types": [
        "weapon"
      ]
    },
    {
      "id": 65,
      "name": "Nullwave Gauntlet",
      "cost": 2400,
      "description": "Activate: Fires a blast at an enemy hero which explodes shortly after hitting its target, item silencing for 4s and dealing 50-100 +15% max health in crystal damage (40s cooldown).\n\n+400 Max Health\n+25% Cooldown Speed\n+4 Energy Recharge",
      "tier": 3,
      "aliases": [
        "*1095_Item_NullwaveGauntlet*",
        "NullwaveGauntlet"
      ],
      "types": [
        "support"
      ]
    },
    {
      "id": 48,
      "name": "Heavy Steel",
      "cost": 1150,
      "description": "+55 Weapon Power",
      "tier": 2,
      "aliases": [
        "*1065_Item_HeavySteel*",
        "Heavy Steel"
      ],
      "types": [
        "weapon"
      ]
    },
    {
      "id": 51,
      "name": "Lucky Strike",
      "cost": 900,
      "description": "+20% Critical Chance\n+12% Critical Damage",
      "tier": 2,
      "aliases": [
        "*1068_Item_LuckyStrike*",
        "LuckyStrike"
      ],
      "types": [
        "weapon"
      ]
    },
    {
      "id": 52,
      "name": "Alternating Current",
      "cost": 2800,
      "description": "Every other basic attack deals 70% of your crystal power as bonus damage.\n\n+60 crystal power\n+65% attack speed",
      "tier": 3,
      "aliases": [
        "*1069_Item_AlternatingCurrent*",
        "Crystal Matrix"
      ],
      "types": [
        "crystal"
      ]
    },
    {
      "id": 53,
      "name": "Piercing Shard",
      "cost": 900,
      "description": "+8% Shield Pierce\n+20 Crystal Power",
      "tier": 2,
      "aliases": [
        "*1070_Item_PiercingShard*",
        "PiercingShard"
      ],
      "types": [
        "crystal"
      ]
    },
    {
      "id": 56,
      "name": "Ironguard Contract",
      "cost": 300,
      "description": "Passive: When a nearby ally kills a jungle monster or large lane minion, it heals you and your ally by 75 health each and 10 energy each.\n\nRange: 14m",
      "tier": 1,
      "aliases": [
        "*1073_Item_IronguardContract*",
        "IronguardContract"
      ],
      "types": [
        "support"
      ]
    },
    {
      "id": 57,
      "name": "Stormguard Banner",
      "cost": 850,
      "description": "Passive: Basic attacks deal 30-80 (level 1-12) bonus true damage per second to non-heroes, 20% to heroes.\n\n+30% cooldown speed\n+4 energy recharge\n+200 Health",
      "tier": 2,
      "aliases": [
        "*1074_Item_StormguardBanner*",
        "StormguardBanner"
      ],
      "types": [
        "support"
      ]
    },
    {
      "id": 58,
      "name": "Contraption",
      "cost": 2100,
      "description": "Active: Target yourself to place a Scout Trap. Target the ground farther away to fire a Flare. 3 charges max. 20s per charge.\n\n+350 Health\n+40% Cooldown Speed\n+3 Energy Recharge",
      "tier": 3,
      "aliases": [
        "*1079_Item_Contraption*",
        "Contraption"
      ],
      "types": [
        "support"
      ]
    },
    {
      "id": 59,
      "name": "Minion's Foot",
      "cost": 300,
      "description": "+10% Critical Chance\n+10% Critical Damage\n\nPassive: After buying this item, your very first attack on an enemy hero will crit.",
      "tier": 1,
      "aliases": [
        "*1080_Item_MinionsFoot*",
        "MinionsFoot"
      ],
      "types": [
        "weapon"
      ]
    },
    {
      "id": 60,
      "name": "Protector Contract",
      "cost": 300,
      "description": "Activate: Grants a 120 health barrier to all nearby allied heroes for 2 seconds. 5s cooldown. 2 max charges, 15s per charge.\n\nRange: 8m",
      "tier": 1,
      "aliases": [
        "*1084_Item_ProtectorContract*",
        "Protector Contract"
      ],
      "types": [
        "support"
      ]
    },
    {
      "id": 61,
      "name": "Halcyon Chargers",
      "cost": 2300,
      "description": "Passive: +0.5 move speed. (Does not stack with other boots.)\n\nPassive: Travel.\n\nActivate: Sprint for 3 seconds (50s cooldown).\n\n+200 Health\n+15% Cooldown Speed\n+250 Energy\n+4 Energy Recharge",
      "tier": 3,
      "aliases": [
        "*1087_Item_HalcyonChargers*",
        "Halcyon Chargers"
      ],
      "types": [
        "other"
      ]
    },
    {
      "id": 62,
      "name": "Flare Gun",
      "cost": 600,
      "description": "Activate: Fire a Flare at target location. 5s cooldown. 2 charges max. 20s per charge.\n\n+250 Health",
      "tier": 2,
      "aliases": [
        "*1088_Item_Flaregun*",
        "Flaregun"
      ],
      "types": [
        "support"
      ]
    },
    {
      "id": 66,
      "name": "Echo",
      "cost": 25,
      "description": "Activate: The last ability to be put on cooldown is refreshed (115% of ability's cooldown + 30s cooldown).\n\n+250 Max Energy",
      "tier": 1,
      "aliases": [
        "*1097_Item_Echo*",
        "Echo"
      ],
      "types": [
        ""
      ]
    },
    {
      "id": 67,
      "name": "Slumbering Husk",
      "cost": 1600,
      "description": "Passive: Taking 20% of your max health in damage over 1.5s fortifies your remaining health for 1.5s (45s cooldown)\n\n+400 Max Health",
      "tier": 3,
      "aliases": [
        "*1105_Item_SlumberingHusk*",
        "SlumberingHusk"
      ],
      "types": [
        "defense"
      ]
    }
  ];

  setUp(() async {
    await app.start();

    await Future.forEach(itemDicts, (dict) async {
      dict.remove("id");
      await (app.client.clientAuthenticatedRequest("/admin/items")..json = dict).post();
    });
  });

  tearDown(() async {
    await app.stop();
  });

  test("Get Matches", () async {
    var req = app.client.clientAuthenticatedRequest("/admin/matches?playerName=YEEESSS&shard=na");
    var response = await req.get();

    expect(response, hasStatus(200));

    var matches = await new Query<VGMatch>().fetch();
    var participants = await new Query<Participant>().fetch();

    expect(matches.length, greaterThan(0));
    expect(participants.length, equals(matches.length * 6));
  });
}
