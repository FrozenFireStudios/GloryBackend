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

  String realJSON = """{
  "data": [
    {
      "type": "match",
      "id": "fc50b8a2-fe11-11e6-a758-0671096b3e30",
      "attributes": {
        "createdAt": "2017-03-01T00:00:03Z",
        "duration": 1312,
        "gameMode": "ranked",
        "patchVersion": "",
        "shardId": "na",
        "stats": {
          "endGameReason": "victory",
          "queue": "ranked"
        },
        "titleId": "semc-vainglory"
      },
      "relationships": {
        "assets": {
          "data": []
        },
        "rosters": {
          "data": [
            {
              "type": "roster",
              "id": "a815bfdb-fe1f-11e6-8d99-0242ac110004"
            },
            {
              "type": "roster",
              "id": "a815bff4-fe1f-11e6-8d99-0242ac110004"
            }
          ]
        },
        "rounds": {
          "data": []
        }
      }
    },
    {
      "type": "match",
      "id": "02fdcf64-fe12-11e6-802d-0667892d829e",
      "attributes": {
        "createdAt": "2017-03-01T00:00:05Z",
        "duration": 301,
        "gameMode": "blitz_pvp_ranked",
        "patchVersion": "",
        "shardId": "na",
        "stats": {
          "endGameReason": "victory",
          "queue": "blitz_pvp_ranked"
        },
        "titleId": "semc-vainglory"
      },
      "relationships": {
        "assets": {
          "data": []
        },
        "rosters": {
          "data": [
            {
              "type": "roster",
              "id": "3010e1ee-fe1f-11e6-a37d-0242ac110009"
            },
            {
              "type": "roster",
              "id": "3010e207-fe1f-11e6-a37d-0242ac110009"
            }
          ]
        },
        "rounds": {
          "data": []
        }
      }
    },
    {
      "type": "match",
      "id": "fea734be-fe11-11e6-a78e-063bc004098b",
      "attributes": {
        "createdAt": "2017-03-01T00:00:02Z",
        "duration": 423,
        "gameMode": "casual_aral",
        "patchVersion": "",
        "shardId": "na",
        "stats": {
          "endGameReason": "victory",
          "queue": "casual_aral"
        },
        "titleId": "semc-vainglory"
      },
      "relationships": {
        "assets": {
          "data": []
        },
        "rosters": {
          "data": [
            {
              "type": "roster",
              "id": "3c2c33c4-fe1f-11e6-a37d-0242ac110009"
            },
            {
              "type": "roster",
              "id": "3c2c33dd-fe1f-11e6-a37d-0242ac110009"
            }
          ]
        },
        "rounds": {
          "data": []
        }
      }
    },
    {
      "type": "match",
      "id": "047849be-fe12-11e6-b78f-06a4039421b6",
      "attributes": {
        "createdAt": "2017-03-01T00:00:01Z",
        "duration": 2401,
        "gameMode": "private",
        "patchVersion": "",
        "shardId": "na",
        "stats": {
          "endGameReason": "victory",
          "queue": "private"
        },
        "titleId": "semc-vainglory"
      },
      "relationships": {
        "assets": {
          "data": []
        },
        "rosters": {
          "data": [
            {
              "type": "roster",
              "id": "199d7edc-fe20-11e6-8d40-0242ac11000a"
            },
            {
              "type": "roster",
              "id": "199d7eeb-fe20-11e6-8d40-0242ac11000a"
            }
          ]
        },
        "rounds": {
          "data": []
        }
      }
    },
    {
      "type": "match",
      "id": "f6953910-fe11-11e6-9ec9-062445d3d668",
      "attributes": {
        "createdAt": "2017-03-01T00:00:04Z",
        "duration": 888,
        "gameMode": "casual",
        "patchVersion": "",
        "shardId": "na",
        "stats": {
          "endGameReason": "victory",
          "queue": "casual"
        },
        "titleId": "semc-vainglory"
      },
      "relationships": {
        "assets": {
          "data": []
        },
        "rosters": {
          "data": [
            {
              "type": "roster",
              "id": "72255cba-fe1f-11e6-a384-0242ac110003"
            },
            {
              "type": "roster",
              "id": "72255cce-fe1f-11e6-a384-0242ac110003"
            }
          ]
        },
        "rounds": {
          "data": []
        }
      }
    }
  ],
  "included": [
    {
      "type": "participant",
      "id": "3c2c33ea-fe1f-11e6-a37d-0242ac110009",
      "attributes": {
        "actor": "*Ardan*",
        "stats": {
          "assists": 3,
          "crystalMineCaptures": 0,
          "deaths": 2,
          "farm": 46,
          "firstAfkTime": -1,
          "goldMineCaptures": 0,
          "itemGrants": {
            "*1000_Item_HalcyonPotion*": 2,
            "*1002_Item_WeaponBlade*": 2,
            "*1015_Item_Oakheart*": 1,
            "*1017_Item_LightArmor*": 1,
            "*1045_Item_FountainOfRenewal*": 1,
            "*1046_Item_Crucible*": 1,
            "*1061_Item_LightShield*": 1,
            "*1067_Item_BreakingPoint*": 1,
            "*1074_Item_StormguardBanner*": 1
          },
          "itemSells": {},
          "itemUses": {
            "*1000_Item_HalcyonPotion*": 2,
            "*1045_Item_FountainOfRenewal*": 2,
            "*1046_Item_Crucible*": 3
          },
          "items": [
            "Light Armor",
            "Fountain of Renewal",
            "StormguardBanner",
            "BreakingPoint",
            "Weapon Blade",
            "Crucible"
          ],
          "jungleKills": 0,
          "karmaLevel": 2,
          "kills": 2,
          "krakenCaptures": 0,
          "level": 30,
          "minionKills": 18,
          "nonJungleMinionKills": 18,
          "skillTier": -1,
          "skinKey": "Ardan_Skin_Fallen_T2",
          "turretCaptures": 4,
          "wentAfk": false,
          "winner": false
        }
      },
      "relationships": {
        "player": {
          "data": {
            "type": "player",
            "id": "fef263a0-25d5-11e5-8bb4-06b48b82cd49"
          }
        }
      }
    },
    {
      "type": "participant",
      "id": "199d7ee4-fe20-11e6-8d40-0242ac11000a",
      "attributes": {
        "actor": "*Idris*",
        "stats": {
          "assists": 0,
          "crystalMineCaptures": 0,
          "deaths": 10,
          "farm": 228.05,
          "firstAfkTime": -1,
          "goldMineCaptures": 0,
          "itemGrants": {
            "*1000_Item_HalcyonPotion*": 9,
            "*1003_Item_CrystalBit*": 1,
            "*1012_Item_Sorrowblade*": 1,
            "*1013_Item_Shatterglass*": 2,
            "*1014_Item_TornadoTrigger*": 6,
            "*1030_Item_SprintBoots*": 1,
            "*1032_Item_TravelBoots*": 1,
            "*1038_Item_Flare*": 1,
            "*1047_Item_JourneyBoots*": 1,
            "*1054_Item_ScoutTrap*": 16,
            "*1065_Item_HeavySteel*": 1,
            "*1068_Item_LuckyStrike*": 5,
            "*1072_Item_HeavyPrism*": 1
          },
          "itemSells": {
            "*1012_Item_Sorrowblade*": 1,
            "*1013_Item_Shatterglass*": 1,
            "*1014_Item_TornadoTrigger*": 1,
            "*1038_Item_Flare*": 1,
            "*1047_Item_JourneyBoots*": 1,
            "*1054_Item_ScoutTrap*": 1
          },
          "itemUses": {
            "*1000_Item_HalcyonPotion*": 9,
            "*1032_Item_TravelBoots*": 5,
            "*1047_Item_JourneyBoots*": 4,
            "*1054_Item_ScoutTrap*": 15
          },
          "items": [
            "Tornado Trigger",
            "Tornado Trigger",
            "Tornado Trigger",
            "Tornado Trigger",
            "Tornado Trigger",
            "Crystal3"
          ],
          "jungleKills": 53,
          "karmaLevel": 2,
          "kills": 20,
          "krakenCaptures": 0,
          "level": 14,
          "minionKills": 167,
          "nonJungleMinionKills": 114,
          "skillTier": 2,
          "skinKey": "Idris_DefaultSkin",
          "turretCaptures": 5,
          "wentAfk": false,
          "winner": true
        }
      },
      "relationships": {
        "player": {
          "data": {
            "type": "player",
            "id": "d5230dea-1b11-11e6-930a-06fc87f1dd11"
          }
        }
      }
    },
    {
      "type": "player",
      "id": "3b12e334-1530-11e5-b31b-06d90c28bf1a",
      "attributes": {
        "name": "23Maximus23",
        "shardId": "",
        "stats": {
          "level": 10,
          "lifetimeGold": 11528.5,
          "lossStreak": 2,
          "played": 54,
          "played_ranked": 0,
          "winStreak": 0,
          "wins": 19,
          "xp": 5627
        },
        "titleId": ""
      },
      "relationships": {
        "assets": {
          "data": []
        }
      }
    },
    {
      "type": "participant",
      "id": "72255cca-fe1f-11e6-a384-0242ac110003",
      "attributes": {
        "actor": "*Skye*",
        "stats": {
          "assists": 9,
          "crystalMineCaptures": 1,
          "deaths": 0,
          "farm": 29,
          "firstAfkTime": -1,
          "goldMineCaptures": 0,
          "itemGrants": {
            "*1000_Item_HalcyonPotion*": 1,
            "*1003_Item_CrystalBit*": 1,
            "*1015_Item_Oakheart*": 1,
            "*1027_Item_VoidBattery*": 1,
            "*1030_Item_SprintBoots*": 1,
            "*1043_Item_ReflexBlock*": 1,
            "*1044_Item_Frostburn*": 1,
            "*1055_Item_BrokenMyth*": 1,
            "*1071_Item_EveOfHarvest*": 1,
            "*1072_Item_HeavyPrism*": 1
          },
          "itemSells": {},
          "itemUses": {
            "*1000_Item_HalcyonPotion*": 1,
            "*1030_Item_SprintBoots*": 2,
            "*1043_Item_ReflexBlock*": 4
          },
          "items": [
            "Frostburn",
            "Reflex Block",
            "Boots1",
            "EveOfHarvest",
            "Broken Myth"
          ],
          "jungleKills": 0,
          "karmaLevel": 1,
          "kills": 6,
          "krakenCaptures": 0,
          "level": 10,
          "minionKills": 27,
          "nonJungleMinionKills": 27,
          "skillTier": -1,
          "skinKey": "Skye_DefaultSkin",
          "turretCaptures": 3,
          "wentAfk": false,
          "winner": true
        }
      },
      "relationships": {
        "player": {
          "data": {
            "type": "player",
            "id": "3b12e334-1530-11e5-b31b-06d90c28bf1a"
          }
        }
      }
    },
    {
      "type": "player",
      "id": "6d2c90ae-3b82-11e5-befc-068789513eb5",
      "attributes": {
        "name": "leon182",
        "shardId": "",
        "stats": {
          "level": 28,
          "lifetimeGold": 15240.75,
          "lossStreak": 3,
          "played": 452,
          "played_ranked": 19,
          "winStreak": 0,
          "wins": 238,
          "xp": 133919
        },
        "titleId": ""
      },
      "relationships": {
        "assets": {
          "data": []
        }
      }
    },
    {
      "type": "participant",
      "id": "3010e210-fe1f-11e6-a37d-0242ac110009",
      "attributes": {
        "actor": "*Kestrel*",
        "stats": {
          "assists": 2,
          "crystalMineCaptures": 0,
          "deaths": 2,
          "farm": 14,
          "firstAfkTime": -1,
          "goldMineCaptures": 0,
          "itemGrants": {
            "*1000_Item_HalcyonPotion*": 2,
            "*1013_Item_Shatterglass*": 1,
            "*1022_Item_CoatOfPlates*": 1,
            "*1024_Item_MetalJacket*": 1,
            "*1029_Item_Clockwork*": 1,
            "*1030_Item_SprintBoots*": 1,
            "*1032_Item_TravelBoots*": 1,
            "*1061_Item_LightShield*": 1,
            "*1062_Item_KineticShield*": 1,
            "*1063_Item_Aegis*": 1,
            "*1072_Item_HeavyPrism*": 1,
            "*1087_Item_HalcyonChargers*": 1
          },
          "itemSells": {},
          "itemUses": {
            "*1000_Item_HalcyonPotion*": 2,
            "*1030_Item_SprintBoots*": 1
          },
          "items": [
            "Crystal3",
            "Clockwork",
            "Halcyon Chargers",
            "Armor3",
            "Crystal Matrix",
            "Heavy Prism"
          ],
          "jungleKills": 0,
          "karmaLevel": 1,
          "kills": 4,
          "krakenCaptures": 0,
          "level": 28,
          "minionKills": 6,
          "nonJungleMinionKills": 6,
          "skillTier": 4,
          "skinKey": "Kestrel_Skin_Sylvan_T1",
          "turretCaptures": 1,
          "wentAfk": false,
          "winner": false
        }
      },
      "relationships": {
        "player": {
          "data": {
            "type": "player",
            "id": "6d2c90ae-3b82-11e5-befc-068789513eb5"
          }
        }
      }
    },
    {
      "type": "player",
      "id": "bafafba6-af3d-11e6-8923-068789513eb5",
      "attributes": {
        "name": "DarkLyra",
        "shardId": "",
        "stats": {
          "level": 19,
          "lifetimeGold": 15855.25,
          "lossStreak": 1,
          "played": 159,
          "played_ranked": 3,
          "winStreak": 0,
          "wins": 93,
          "xp": 54640
        },
        "titleId": ""
      },
      "relationships": {
        "assets": {
          "data": []
        }
      }
    },
    {
      "type": "player",
      "id": "2ee1a132-d70c-11e6-8282-067e8bc536fd",
      "attributes": {
        "name": "finlayfishco",
        "shardId": "",
        "stats": {
          "level": 16,
          "lifetimeGold": 11457.75,
          "lossStreak": 3,
          "played": 97,
          "played_ranked": 13,
          "winStreak": 0,
          "wins": 51,
          "xp": 32379
        },
        "titleId": ""
      },
      "relationships": {
        "assets": {
          "data": []
        }
      }
    },
    {
      "type": "roster",
      "id": "72255cce-fe1f-11e6-a384-0242ac110003",
      "attributes": {
        "stats": {
          "acesEarned": 0,
          "gold": 21217,
          "heroKills": 5,
          "krakenCaptures": 0,
          "side": "right/red",
          "turretKills": 0,
          "turretsRemaining": 0
        }
      },
      "relationships": {
        "participants": {
          "data": [
            {
              "type": "participant",
              "id": "72255cd2-fe1f-11e6-a384-0242ac110003"
            },
            {
              "type": "participant",
              "id": "72255cd6-fe1f-11e6-a384-0242ac110003"
            },
            {
              "type": "participant",
              "id": "72255cdb-fe1f-11e6-a384-0242ac110003"
            }
          ]
        },
        "team": {
          "data": null
        }
      }
    },
    {
      "type": "participant",
      "id": "3010e1fc-fe1f-11e6-a37d-0242ac110009",
      "attributes": {
        "actor": "*Ringo*",
        "stats": {
          "assists": 0,
          "crystalMineCaptures": 0,
          "deaths": 3,
          "farm": 31.725,
          "firstAfkTime": -1,
          "goldMineCaptures": 1,
          "itemGrants": {
            "*1002_Item_WeaponBlade*": 1,
            "*1005_Item_SixSins*": 1,
            "*1010_Item_BlazingSalvo*": 1,
            "*1012_Item_Sorrowblade*": 1,
            "*1025_Item_EnergyBattery*": 1,
            "*1032_Item_TravelBoots*": 1,
            "*1039_Item_Bonesaw*": 1,
            "*1043_Item_ReflexBlock*": 1,
            "*1049_Item_TyrantsMonocle*": 1,
            "*1052_Item_WeaponInfusion*": 1,
            "*1063_Item_Aegis*": 1,
            "*1067_Item_BreakingPoint*": 1,
            "*1068_Item_LuckyStrike*": 1,
            "*1105_Item_SlumberingHusk*": 1
          },
          "itemSells": {
            "*1025_Item_EnergyBattery*": 1,
            "*1063_Item_Aegis*": 1
          },
          "itemUses": {
            "*1032_Item_TravelBoots*": 2,
            "*1043_Item_ReflexBlock*": 1,
            "*1052_Item_WeaponInfusion*": 1,
            "*1063_Item_Aegis*": 1
          },
          "items": [
            "Weapon3",
            "BreakingPoint",
            "Boots2",
            "Critical",
            "Armor Shredder",
            "SlumberingHusk"
          ],
          "jungleKills": 3,
          "karmaLevel": 1,
          "kills": 7,
          "krakenCaptures": 0,
          "level": 11,
          "minionKills": 13,
          "nonJungleMinionKills": 10,
          "skillTier": 7,
          "skinKey": "Ringo_DefaultSkin",
          "turretCaptures": 0,
          "wentAfk": false,
          "winner": true
        }
      },
      "relationships": {
        "player": {
          "data": {
            "type": "player",
            "id": "f694e3aa-ddca-11e6-93b9-06eb725f8a76"
          }
        }
      }
    },
    {
      "type": "participant",
      "id": "72255cc2-fe1f-11e6-a384-0242ac110003",
      "attributes": {
        "actor": "*Hero009*",
        "stats": {
          "assists": 5,
          "crystalMineCaptures": 3,
          "deaths": 1,
          "farm": 65.425,
          "firstAfkTime": -1,
          "goldMineCaptures": 2,
          "itemGrants": {
            "*1000_Item_HalcyonPotion*": 1,
            "*1002_Item_WeaponBlade*": 1,
            "*1004_Item_SwiftShooter*": 1,
            "*1010_Item_BlazingSalvo*": 2,
            "*1030_Item_SprintBoots*": 1,
            "*1032_Item_TravelBoots*": 1,
            "*1039_Item_Bonesaw*": 1,
            "*1042_Item_Shiversteel*": 1,
            "*1043_Item_ReflexBlock*": 1,
            "*1061_Item_LightShield*": 1,
            "*1062_Item_KineticShield*": 1,
            "*1063_Item_Aegis*": 1,
            "*1067_Item_BreakingPoint*": 1
          },
          "itemSells": {},
          "itemUses": {
            "*1000_Item_HalcyonPotion*": 1,
            "*1030_Item_SprintBoots*": 1,
            "*1032_Item_TravelBoots*": 2,
            "*1042_Item_Shiversteel*": 7
          },
          "items": [
            "BreakingPoint",
            "Boots2",
            "Shiversteel",
            "Crystal Matrix",
            "Armor Shredder"
          ],
          "jungleKills": 33,
          "karmaLevel": 1,
          "kills": 7,
          "krakenCaptures": 0,
          "level": 16,
          "minionKills": 49,
          "nonJungleMinionKills": 16,
          "skillTier": 3,
          "skinKey": "Krul_DefaultSkin",
          "turretCaptures": 2,
          "wentAfk": false,
          "winner": true
        }
      },
      "relationships": {
        "player": {
          "data": {
            "type": "player",
            "id": "2ee1a132-d70c-11e6-8282-067e8bc536fd"
          }
        }
      }
    },
    {
      "type": "player",
      "id": "8bd1afce-d049-11e5-aa97-06d90c28bf1a",
      "attributes": {
        "name": "xsferpro",
        "shardId": "",
        "stats": {
          "level": 8,
          "lifetimeGold": 7825.41650390625,
          "lossStreak": 5,
          "played": 29,
          "played_ranked": 0,
          "winStreak": 0,
          "wins": 12,
          "xp": 3306
        },
        "titleId": ""
      },
      "relationships": {
        "assets": {
          "data": []
        }
      }
    },
    {
      "type": "roster",
      "id": "3c2c33dd-fe1f-11e6-a37d-0242ac110009",
      "attributes": {
        "stats": {
          "acesEarned": 2,
          "gold": 37717,
          "heroKills": 9,
          "krakenCaptures": 0,
          "side": "right/red",
          "turretKills": 4,
          "turretsRemaining": 0
        }
      },
      "relationships": {
        "participants": {
          "data": [
            {
              "type": "participant",
              "id": "3c2c33e2-fe1f-11e6-a37d-0242ac110009"
            },
            {
              "type": "participant",
              "id": "3c2c33e6-fe1f-11e6-a37d-0242ac110009"
            },
            {
              "type": "participant",
              "id": "3c2c33ea-fe1f-11e6-a37d-0242ac110009"
            }
          ]
        },
        "team": {
          "data": null
        }
      }
    },
    {
      "type": "participant",
      "id": "a815bffd-fe1f-11e6-8d99-0242ac110004",
      "attributes": {
        "actor": "*Alpha*",
        "stats": {
          "assists": 2,
          "crystalMineCaptures": 0,
          "deaths": 5,
          "farm": 75.55,
          "firstAfkTime": -1,
          "goldMineCaptures": 0,
          "itemGrants": {
            "*1000_Item_HalcyonPotion*": 5,
            "*1003_Item_CrystalBit*": 4,
            "*1009_Item_EclipsePrism*": 1,
            "*1013_Item_Shatterglass*": 1,
            "*1015_Item_Oakheart*": 1,
            "*1017_Item_LightArmor*": 1,
            "*1030_Item_SprintBoots*": 1,
            "*1032_Item_TravelBoots*": 1,
            "*1038_Item_Flare*": 4,
            "*1043_Item_ReflexBlock*": 1,
            "*1053_Item_CrystalInfusion*": 3,
            "*1055_Item_BrokenMyth*": 1,
            "*1057_Item_AtlasPauldron*": 1,
            "*1061_Item_LightShield*": 1,
            "*1062_Item_KineticShield*": 1,
            "*1063_Item_Aegis*": 1,
            "*1070_Item_PiercingShard*": 1,
            "*1072_Item_HeavyPrism*": 2
          },
          "itemSells": {
            "*1000_Item_HalcyonPotion*": 3
          },
          "itemUses": {
            "*1000_Item_HalcyonPotion*": 2,
            "*1030_Item_SprintBoots*": 3,
            "*1032_Item_TravelBoots*": 2,
            "*1038_Item_Flare*": 2,
            "*1043_Item_ReflexBlock*": 3,
            "*1053_Item_CrystalInfusion*": 3,
            "*1057_Item_AtlasPauldron*": 5,
            "*1063_Item_Aegis*": 1
          },
          "items": [
            "Crystal3",
            "Crystal Matrix",
            "Boots2",
            "Broken Myth",
            "Atlas Pauldron",
            "Flare"
          ],
          "jungleKills": 42,
          "karmaLevel": 2,
          "kills": 7,
          "krakenCaptures": 0,
          "level": 30,
          "minionKills": 54,
          "nonJungleMinionKills": 12,
          "skillTier": 27,
          "skinKey": "Alpha_Skin_Horror_T1",
          "turretCaptures": 1,
          "wentAfk": false,
          "winner": false
        }
      },
      "relationships": {
        "player": {
          "data": {
            "type": "player",
            "id": "1bff99d6-eecb-11e5-ad76-06eb725f8a76"
          }
        }
      }
    },
    {
      "type": "participant",
      "id": "3010e1f6-fe1f-11e6-a37d-0242ac110009",
      "attributes": {
        "actor": "*Ozo*",
        "stats": {
          "assists": 4,
          "crystalMineCaptures": 0,
          "deaths": 2,
          "farm": 7.3,
          "firstAfkTime": -1,
          "goldMineCaptures": 1,
          "itemGrants": {
            "*1000_Item_HalcyonPotion*": 3,
            "*1009_Item_EclipsePrism*": 1,
            "*1013_Item_Shatterglass*": 1,
            "*1032_Item_TravelBoots*": 1,
            "*1046_Item_Crucible*": 1,
            "*1055_Item_BrokenMyth*": 1,
            "*1056_Item_WarTreads*": 1,
            "*1070_Item_PiercingShard*": 1,
            "*1072_Item_HeavyPrism*": 2
          },
          "itemSells": {
            "*1000_Item_HalcyonPotion*": 2
          },
          "itemUses": {
            "*1000_Item_HalcyonPotion*": 1,
            "*1032_Item_TravelBoots*": 1,
            "*1056_Item_WarTreads*": 1
          },
          "items": [
            "Crystal3",
            "War Treads",
            "Broken Myth",
            "Crystal2",
            "Crucible",
            "Heavy Prism"
          ],
          "jungleKills": 4,
          "karmaLevel": 1,
          "kills": 0,
          "krakenCaptures": 0,
          "level": 30,
          "minionKills": 4,
          "nonJungleMinionKills": 0,
          "skillTier": 10,
          "skinKey": "Ozo_DefaultSkin",
          "turretCaptures": 0,
          "wentAfk": false,
          "winner": true
        }
      },
      "relationships": {
        "player": {
          "data": {
            "type": "player",
            "id": "3756967e-01c4-11e6-aeec-06f4ee369f53"
          }
        }
      }
    },
    {
      "type": "participant",
      "id": "3010e203-fe1f-11e6-a37d-0242ac110009",
      "attributes": {
        "actor": "*Catherine*",
        "stats": {
          "assists": 4,
          "crystalMineCaptures": 0,
          "deaths": 2,
          "farm": 42,
          "firstAfkTime": -1,
          "goldMineCaptures": 1,
          "itemGrants": {
            "*1002_Item_WeaponBlade*": 1,
            "*1004_Item_SwiftShooter*": 2,
            "*1010_Item_BlazingSalvo*": 1,
            "*1038_Item_Flare*": 5,
            "*1045_Item_FountainOfRenewal*": 1,
            "*1061_Item_LightShield*": 1,
            "*1062_Item_KineticShield*": 1,
            "*1064_Item_Lifespring*": 1,
            "*1067_Item_BreakingPoint*": 1,
            "*1069_Item_AlternatingCurrent*": 1,
            "*1071_Item_EveOfHarvest*": 1,
            "*1092_Item_PoisonedShiv*": 1
          },
          "itemSells": {},
          "itemUses": {
            "*1038_Item_Flare*": 5,
            "*1045_Item_FountainOfRenewal*": 2
          },
          "items": [
            "LuckyStrike",
            "EveOfHarvest",
            "BreakingPoint",
            "PoisonedShiv",
            "Fountain of Renewal"
          ],
          "jungleKills": 1,
          "karmaLevel": 1,
          "kills": 1,
          "krakenCaptures": 0,
          "level": 19,
          "minionKills": 18,
          "nonJungleMinionKills": 17,
          "skillTier": -1,
          "skinKey": "Catherine_Skin_Vampire_T1",
          "turretCaptures": 0,
          "wentAfk": false,
          "winner": true
        }
      },
      "relationships": {
        "player": {
          "data": {
            "type": "player",
            "id": "bafafba6-af3d-11e6-8923-068789513eb5"
          }
        }
      }
    },
    {
      "type": "participant",
      "id": "199d7eee-fe20-11e6-8d40-0242ac11000a",
      "attributes": {
        "actor": "*Ozo*",
        "stats": {
          "assists": 2,
          "crystalMineCaptures": 0,
          "deaths": 16,
          "farm": 42.175,
          "firstAfkTime": -1,
          "goldMineCaptures": 0,
          "itemGrants": {
            "*1003_Item_CrystalBit*": 1,
            "*1012_Item_Sorrowblade*": 2,
            "*1013_Item_Shatterglass*": 1,
            "*1014_Item_TornadoTrigger*": 1,
            "*1030_Item_SprintBoots*": 1,
            "*1032_Item_TravelBoots*": 1
          },
          "itemSells": {
            "*1003_Item_CrystalBit*": 1,
            "*1012_Item_Sorrowblade*": 2,
            "*1014_Item_TornadoTrigger*": 1
          },
          "itemUses": {
            "*1030_Item_SprintBoots*": 3,
            "*1032_Item_TravelBoots*": 5
          },
          "items": [
            "Boots2",
            "Crystal3"
          ],
          "jungleKills": 12,
          "karmaLevel": 2,
          "kills": 3,
          "krakenCaptures": 0,
          "level": 13,
          "minionKills": 33,
          "nonJungleMinionKills": 21,
          "skillTier": 2,
          "skinKey": "Ozo_DefaultSkin",
          "turretCaptures": 3,
          "wentAfk": false,
          "winner": false
        }
      },
      "relationships": {
        "player": {
          "data": {
            "type": "player",
            "id": "e8d215b2-df82-11e6-ae7a-06f4ee369f53"
          }
        }
      }
    },
    {
      "type": "roster",
      "id": "199d7eeb-fe20-11e6-8d40-0242ac11000a",
      "attributes": {
        "stats": {
          "acesEarned": 10,
          "gold": 34066,
          "heroKills": 6,
          "krakenCaptures": 0,
          "side": "right/red",
          "turretKills": 5,
          "turretsRemaining": 0
        }
      },
      "relationships": {
        "participants": {
          "data": [
            {
              "type": "participant",
              "id": "199d7eee-fe20-11e6-8d40-0242ac11000a"
            },
            {
              "type": "participant",
              "id": "199d7ef3-fe20-11e6-8d40-0242ac11000a"
            }
          ]
        },
        "team": {
          "data": null
        }
      }
    },
    {
      "type": "player",
      "id": "95b85916-a89d-11e6-90ee-06d90c28bf1a",
      "attributes": {
        "name": "Mrpurplesheep",
        "shardId": "",
        "stats": {
          "level": 17,
          "lifetimeGold": 13593.75,
          "lossStreak": 1,
          "played": 247,
          "played_ranked": 121,
          "winStreak": 0,
          "wins": 122,
          "xp": 41178
        },
        "titleId": ""
      },
      "relationships": {
        "assets": {
          "data": []
        }
      }
    },
    {
      "type": "participant",
      "id": "72255cd6-fe1f-11e6-a384-0242ac110003",
      "attributes": {
        "actor": "*Fortress*",
        "stats": {
          "assists": 1,
          "crystalMineCaptures": 0,
          "deaths": 7,
          "farm": 29,
          "firstAfkTime": 453.90325927734375,
          "goldMineCaptures": 0,
          "itemGrants": {
            "*1000_Item_HalcyonPotion*": 8,
            "*1003_Item_CrystalBit*": 1,
            "*1015_Item_Oakheart*": 2,
            "*1016_Item_Dragonheart*": 1,
            "*1017_Item_LightArmor*": 1,
            "*1022_Item_CoatOfPlates*": 1,
            "*1030_Item_SprintBoots*": 1,
            "*1045_Item_FountainOfRenewal*": 1,
            "*1057_Item_AtlasPauldron*": 1,
            "*1061_Item_LightShield*": 1,
            "*1062_Item_KineticShield*": 1,
            "*1064_Item_Lifespring*": 1
          },
          "itemSells": {},
          "itemUses": {
            "*1000_Item_HalcyonPotion*": 8,
            "*1030_Item_SprintBoots*": 4,
            "*1057_Item_AtlasPauldron*": 1
          },
          "items": [
            "Fountain of Renewal",
            "Atlas Pauldron",
            "Boots1",
            "Health2",
            "Crystal1",
            "Oakheart"
          ],
          "jungleKills": 18,
          "karmaLevel": 1,
          "kills": 1,
          "krakenCaptures": 0,
          "level": 12,
          "minionKills": 23,
          "nonJungleMinionKills": 5,
          "skillTier": -1,
          "skinKey": "Fortress_Skin_Hell_T1",
          "turretCaptures": 0,
          "wentAfk": true,
          "winner": false
        }
      },
      "relationships": {
        "player": {
          "data": {
            "type": "player",
            "id": "eeabb346-c49b-11e6-a337-06a9175d25fa"
          }
        }
      }
    },
    {
      "type": "participant",
      "id": "a815bfea-fe1f-11e6-8d99-0242ac110004",
      "attributes": {
        "actor": "*Glaive*",
        "stats": {
          "assists": 7,
          "crystalMineCaptures": 0,
          "deaths": 4,
          "farm": 97.325,
          "firstAfkTime": -1,
          "goldMineCaptures": 1,
          "itemGrants": {
            "*1000_Item_HalcyonPotion*": 10,
            "*1002_Item_WeaponBlade*": 3,
            "*1004_Item_SwiftShooter*": 1,
            "*1005_Item_SixSins*": 2,
            "*1012_Item_Sorrowblade*": 1,
            "*1022_Item_CoatOfPlates*": 1,
            "*1030_Item_SprintBoots*": 1,
            "*1032_Item_TravelBoots*": 1,
            "*1049_Item_TyrantsMonocle*": 1,
            "*1052_Item_WeaponInfusion*": 2,
            "*1061_Item_LightShield*": 1,
            "*1062_Item_KineticShield*": 1,
            "*1065_Item_HeavySteel*": 2,
            "*1067_Item_BreakingPoint*": 1,
            "*1068_Item_LuckyStrike*": 1
          },
          "itemSells": {},
          "itemUses": {
            "*1000_Item_HalcyonPotion*": 10,
            "*1030_Item_SprintBoots*": 3,
            "*1032_Item_TravelBoots*": 4,
            "*1052_Item_WeaponInfusion*": 2
          },
          "items": [
            "Weapon3",
            "BreakingPoint",
            "Boots2",
            "Critical",
            "Armor2",
            "Shield 2"
          ],
          "jungleKills": 74,
          "karmaLevel": 2,
          "kills": 5,
          "krakenCaptures": 1,
          "level": 30,
          "minionKills": 85,
          "nonJungleMinionKills": 11,
          "skillTier": 27,
          "skinKey": "Glaive_Skin_Prehistoric_T3",
          "turretCaptures": 4,
          "wentAfk": false,
          "winner": true
        }
      },
      "relationships": {
        "player": {
          "data": {
            "type": "player",
            "id": "2578d932-8be4-11e4-b310-06d90c28bf1a"
          }
        }
      }
    },
    {
      "type": "player",
      "id": "71e8f0ca-ac29-11e5-b475-06eb725f8a76",
      "attributes": {
        "name": "Nighthunterr",
        "shardId": "",
        "stats": {
          "level": 30,
          "lifetimeGold": 11066.25,
          "lossStreak": 0,
          "played": 2984,
          "played_ranked": 1690,
          "winStreak": 2,
          "wins": 1617,
          "xp": 175450
        },
        "titleId": ""
      },
      "relationships": {
        "assets": {
          "data": []
        }
      }
    },
    {
      "type": "player",
      "id": "e8d215b2-df82-11e6-ae7a-06f4ee369f53",
      "attributes": {
        "name": "PandaELcoate",
        "shardId": "",
        "stats": {
          "level": 13,
          "lifetimeGold": 17231,
          "lossStreak": 1,
          "played": 54,
          "played_ranked": 29,
          "winStreak": 0,
          "wins": 11,
          "xp": 15075
        },
        "titleId": ""
      },
      "relationships": {
        "assets": {
          "data": []
        }
      }
    },
    {
      "type": "roster",
      "id": "3010e1ee-fe1f-11e6-a37d-0242ac110009",
      "attributes": {
        "stats": {
          "acesEarned": 0,
          "gold": 45967,
          "heroKills": 8,
          "krakenCaptures": 0,
          "side": "left/blue",
          "turretKills": 0,
          "turretsRemaining": 4
        }
      },
      "relationships": {
        "participants": {
          "data": [
            {
              "type": "participant",
              "id": "3010e1f6-fe1f-11e6-a37d-0242ac110009"
            },
            {
              "type": "participant",
              "id": "3010e1fc-fe1f-11e6-a37d-0242ac110009"
            },
            {
              "type": "participant",
              "id": "3010e203-fe1f-11e6-a37d-0242ac110009"
            }
          ]
        },
        "team": {
          "data": null
        }
      }
    },
    {
      "type": "player",
      "id": "a7748390-207d-11e5-8352-06eb725f8a76",
      "attributes": {
        "name": "Quetzalcoatl01",
        "shardId": "",
        "stats": {
          "level": 30,
          "lifetimeGold": 16673.5,
          "lossStreak": 0,
          "played": 2503,
          "played_ranked": 532,
          "winStreak": 1,
          "wins": 1299,
          "xp": 175450
        },
        "titleId": ""
      },
      "relationships": {
        "assets": {
          "data": []
        }
      }
    },
    {
      "type": "participant",
      "id": "3c2c33cf-fe1f-11e6-a37d-0242ac110009",
      "attributes": {
        "actor": "*Flicker*",
        "stats": {
          "assists": 6,
          "crystalMineCaptures": 0,
          "deaths": 3,
          "farm": 44,
          "firstAfkTime": -1,
          "goldMineCaptures": 0,
          "itemGrants": {
            "*1000_Item_HalcyonPotion*": 3,
            "*1003_Item_CrystalBit*": 1,
            "*1015_Item_Oakheart*": 1,
            "*1022_Item_CoatOfPlates*": 1,
            "*1026_Item_Hourglass*": 1,
            "*1030_Item_SprintBoots*": 1,
            "*1032_Item_TravelBoots*": 1,
            "*1043_Item_ReflexBlock*": 1,
            "*1045_Item_FountainOfRenewal*": 1,
            "*1057_Item_AtlasPauldron*": 1,
            "*1061_Item_LightShield*": 1,
            "*1062_Item_KineticShield*": 1,
            "*1064_Item_Lifespring*": 1
          },
          "itemSells": {
            "*1000_Item_HalcyonPotion*": 2
          },
          "itemUses": {
            "*1000_Item_HalcyonPotion*": 1,
            "*1030_Item_SprintBoots*": 1,
            "*1032_Item_TravelBoots*": 2,
            "*1043_Item_ReflexBlock*": 1,
            "*1045_Item_FountainOfRenewal*": 3,
            "*1057_Item_AtlasPauldron*": 5
          },
          "items": [
            "Fountain of Renewal",
            "Reflex Block",
            "Atlas Pauldron",
            "Cooldown1",
            "Crystal1",
            "Boots2"
          ],
          "jungleKills": 0,
          "karmaLevel": 2,
          "kills": 1,
          "krakenCaptures": 0,
          "level": 30,
          "minionKills": 18,
          "nonJungleMinionKills": 18,
          "skillTier": 22,
          "skinKey": "Flicker_DefaultSkin",
          "turretCaptures": 4,
          "wentAfk": false,
          "winner": true
        }
      },
      "relationships": {
        "player": {
          "data": {
            "type": "player",
            "id": "dddc68ec-a739-11e5-88d7-06b48b82cd49"
          }
        }
      }
    },
    {
      "type": "player",
      "id": "66342c76-fe09-11e6-bbee-06c5ee41a4a5",
      "attributes": {
        "name": "SLENDERMANAUNT",
        "shardId": "",
        "stats": {
          "level": 1,
          "lifetimeGold": 16835,
          "lossStreak": 0,
          "played": 0,
          "played_ranked": 0,
          "winStreak": 0,
          "wins": 0,
          "xp": 67
        },
        "titleId": ""
      },
      "relationships": {
        "assets": {
          "data": []
        }
      }
    },
    {
      "type": "roster",
      "id": "199d7edc-fe20-11e6-8d40-0242ac11000a",
      "attributes": {
        "stats": {
          "acesEarned": 4,
          "gold": 27132,
          "heroKills": 20,
          "krakenCaptures": 0,
          "side": "left/blue",
          "turretKills": 5,
          "turretsRemaining": 0
        }
      },
      "relationships": {
        "participants": {
          "data": [
            {
              "type": "participant",
              "id": "199d7ee4-fe20-11e6-8d40-0242ac11000a"
            }
          ]
        },
        "team": {
          "data": null
        }
      }
    },
    {
      "type": "participant",
      "id": "72255cd2-fe1f-11e6-a384-0242ac110003",
      "attributes": {
        "actor": "*Samuel*",
        "stats": {
          "assists": 1,
          "crystalMineCaptures": 0,
          "deaths": 8,
          "farm": 27,
          "firstAfkTime": -1,
          "goldMineCaptures": 0,
          "itemGrants": {
            "*1000_Item_HalcyonPotion*": 23,
            "*1003_Item_CrystalBit*": 1,
            "*1004_Item_SwiftShooter*": 1,
            "*1017_Item_LightArmor*": 1,
            "*1027_Item_VoidBattery*": 1,
            "*1030_Item_SprintBoots*": 1,
            "*1061_Item_LightShield*": 1,
            "*1071_Item_EveOfHarvest*": 1,
            "*1072_Item_HeavyPrism*": 1
          },
          "itemSells": {},
          "itemUses": {
            "*1000_Item_HalcyonPotion*": 23,
            "*1030_Item_SprintBoots*": 4
          },
          "items": [
            "EveOfHarvest",
            "AttackSpeed1",
            "Boots1",
            "Light Armor",
            "Light Shield"
          ],
          "jungleKills": 0,
          "karmaLevel": 2,
          "kills": 1,
          "krakenCaptures": 0,
          "level": 30,
          "minionKills": 21,
          "nonJungleMinionKills": 21,
          "skillTier": 10,
          "skinKey": "Samuel_DefaultSkin",
          "turretCaptures": 0,
          "wentAfk": false,
          "winner": false
        }
      },
      "relationships": {
        "player": {
          "data": {
            "type": "player",
            "id": "21a0b516-740e-11e4-b7f5-06d90c28bf1a"
          }
        }
      }
    },
    {
      "type": "player",
      "id": "38ea2904-1c6b-11e5-a382-06eb725f8a76",
      "attributes": {
        "name": "MaxPink",
        "shardId": "",
        "stats": {
          "level": 30,
          "lifetimeGold": 13999.5,
          "lossStreak": 1,
          "played": 1849,
          "played_ranked": 864,
          "winStreak": 0,
          "wins": 943,
          "xp": 175450
        },
        "titleId": ""
      },
      "relationships": {
        "assets": {
          "data": []
        }
      }
    },
    {
      "type": "participant",
      "id": "3c2c33d4-fe1f-11e6-a37d-0242ac110009",
      "attributes": {
        "actor": "*Reim*",
        "stats": {
          "assists": 4,
          "crystalMineCaptures": 0,
          "deaths": 3,
          "farm": 12,
          "firstAfkTime": -1,
          "goldMineCaptures": 0,
          "itemGrants": {
            "*1000_Item_HalcyonPotion*": 5,
            "*1003_Item_CrystalBit*": 1,
            "*1009_Item_EclipsePrism*": 1,
            "*1022_Item_CoatOfPlates*": 1,
            "*1027_Item_VoidBattery*": 1,
            "*1030_Item_SprintBoots*": 1,
            "*1050_Item_Aftershock*": 1,
            "*1062_Item_KineticShield*": 1,
            "*1063_Item_Aegis*": 1,
            "*1071_Item_EveOfHarvest*": 1,
            "*1072_Item_HeavyPrism*": 1
          },
          "itemSells": {},
          "itemUses": {
            "*1000_Item_HalcyonPotion*": 3,
            "*1030_Item_SprintBoots*": 2
          },
          "items": [
            "EveOfHarvest",
            "Crystal Matrix",
            "Boots1",
            "Aftershock",
            "Mulled Wine",
            "Armor2"
          ],
          "jungleKills": 0,
          "karmaLevel": 2,
          "kills": 3,
          "krakenCaptures": 0,
          "level": 30,
          "minionKills": 5,
          "nonJungleMinionKills": 5,
          "skillTier": 3,
          "skinKey": "Reim_Skin_Thunder_T3",
          "turretCaptures": 4,
          "wentAfk": false,
          "winner": true
        }
      },
      "relationships": {
        "player": {
          "data": {
            "type": "player",
            "id": "754027ca-34ce-11e5-b24b-068789513eb5"
          }
        }
      }
    },
    {
      "type": "player",
      "id": "fef263a0-25d5-11e5-8bb4-06b48b82cd49",
      "attributes": {
        "name": "Ulises91",
        "shardId": "",
        "stats": {
          "level": 30,
          "lifetimeGold": 12800,
          "lossStreak": 2,
          "played": 1514,
          "played_ranked": 488,
          "winStreak": 0,
          "wins": 830,
          "xp": 175450
        },
        "titleId": ""
      },
      "relationships": {
        "assets": {
          "data": []
        }
      }
    },
    {
      "type": "roster",
      "id": "3c2c33c4-fe1f-11e6-a37d-0242ac110009",
      "attributes": {
        "stats": {
          "acesEarned": 1,
          "gold": 35335,
          "heroKills": 9,
          "krakenCaptures": 0,
          "side": "left/blue",
          "turretKills": 5,
          "turretsRemaining": 1
        }
      },
      "relationships": {
        "participants": {
          "data": [
            {
              "type": "participant",
              "id": "3c2c33cf-fe1f-11e6-a37d-0242ac110009"
            },
            {
              "type": "participant",
              "id": "3c2c33d4-fe1f-11e6-a37d-0242ac110009"
            },
            {
              "type": "participant",
              "id": "3c2c33d9-fe1f-11e6-a37d-0242ac110009"
            }
          ]
        },
        "team": {
          "data": null
        }
      }
    },
    {
      "type": "roster",
      "id": "a815bfdb-fe1f-11e6-8d99-0242ac110004",
      "attributes": {
        "stats": {
          "acesEarned": 2,
          "gold": 45871,
          "heroKills": 15,
          "krakenCaptures": 1,
          "side": "left/blue",
          "turretKills": 5,
          "turretsRemaining": 4
        }
      },
      "relationships": {
        "participants": {
          "data": [
            {
              "type": "participant",
              "id": "a815bfe4-fe1f-11e6-8d99-0242ac110004"
            },
            {
              "type": "participant",
              "id": "a815bfea-fe1f-11e6-8d99-0242ac110004"
            },
            {
              "type": "participant",
              "id": "a815bfef-fe1f-11e6-8d99-0242ac110004"
            }
          ]
        },
        "team": {
          "data": null
        }
      }
    },
    {
      "type": "player",
      "id": "21a0b516-740e-11e4-b7f5-06d90c28bf1a",
      "attributes": {
        "name": "QS911",
        "shardId": "",
        "stats": {
          "level": 30,
          "lifetimeGold": 6702.91650390625,
          "lossStreak": 3,
          "played": 2248,
          "played_ranked": 844,
          "winStreak": 0,
          "wins": 1141,
          "xp": 175450
        },
        "titleId": ""
      },
      "relationships": {
        "assets": {
          "data": []
        }
      }
    },
    {
      "type": "player",
      "id": "f694e3aa-ddca-11e6-93b9-06eb725f8a76",
      "attributes": {
        "name": "BestCarryMx",
        "shardId": "",
        "stats": {
          "level": 11,
          "lifetimeGold": 16227.75,
          "lossStreak": 0,
          "played": 57,
          "played_ranked": 20,
          "winStreak": 2,
          "wins": 44,
          "xp": 7673
        },
        "titleId": ""
      },
      "relationships": {
        "assets": {
          "data": []
        }
      }
    },
    {
      "type": "player",
      "id": "dd96873c-cb6b-11e4-a2a8-06eb725f8a76",
      "attributes": {
        "name": "wapper",
        "shardId": "",
        "stats": {
          "level": 28,
          "lifetimeGold": 14967,
          "lossStreak": 2,
          "played": 774,
          "played_ranked": 147,
          "winStreak": 0,
          "wins": 397,
          "xp": 125639
        },
        "titleId": ""
      },
      "relationships": {
        "assets": {
          "data": []
        }
      }
    },
    {
      "type": "player",
      "id": "dddc68ec-a739-11e5-88d7-06b48b82cd49",
      "attributes": {
        "name": "blackjesus7192",
        "shardId": "",
        "stats": {
          "level": 30,
          "lifetimeGold": 11751.25,
          "lossStreak": 1,
          "played": 1430,
          "played_ranked": 939,
          "winStreak": 0,
          "wins": 790,
          "xp": 175450
        },
        "titleId": ""
      },
      "relationships": {
        "assets": {
          "data": []
        }
      }
    },
    {
      "type": "player",
      "id": "77db4f0e-1382-11e5-a5ba-06d90c28bf1a",
      "attributes": {
        "name": "QuibbleMaster",
        "shardId": "",
        "stats": {
          "level": 30,
          "lifetimeGold": 13851.25,
          "lossStreak": 1,
          "played": 2755,
          "played_ranked": 705,
          "winStreak": 0,
          "wins": 1438,
          "xp": 175450
        },
        "titleId": ""
      },
      "relationships": {
        "assets": {
          "data": []
        }
      }
    },
    {
      "type": "participant",
      "id": "3c2c33e6-fe1f-11e6-a37d-0242ac110009",
      "attributes": {
        "actor": "*Vox*",
        "stats": {
          "assists": 6,
          "crystalMineCaptures": 0,
          "deaths": 3,
          "farm": 96,
          "firstAfkTime": -1,
          "goldMineCaptures": 0,
          "itemGrants": {
            "*1000_Item_HalcyonPotion*": 4,
            "*1003_Item_CrystalBit*": 1,
            "*1010_Item_BlazingSalvo*": 1,
            "*1032_Item_TravelBoots*": 1,
            "*1044_Item_Frostburn*": 1,
            "*1054_Item_ScoutTrap*": 2,
            "*1055_Item_BrokenMyth*": 1,
            "*1069_Item_AlternatingCurrent*": 1,
            "*1070_Item_PiercingShard*": 1,
            "*1071_Item_EveOfHarvest*": 1,
            "*1072_Item_HeavyPrism*": 1,
            "*1087_Item_HalcyonChargers*": 1
          },
          "itemSells": {
            "*1054_Item_ScoutTrap*": 1
          },
          "itemUses": {
            "*1000_Item_HalcyonPotion*": 4,
            "*1032_Item_TravelBoots*": 1,
            "*1054_Item_ScoutTrap*": 1
          },
          "items": [
            "LuckyStrike",
            "Frostburn",
            "Broken Myth",
            "Halcyon Chargers",
            "EveOfHarvest"
          ],
          "jungleKills": 0,
          "karmaLevel": 1,
          "kills": 3,
          "krakenCaptures": 0,
          "level": 30,
          "minionKills": 38,
          "nonJungleMinionKills": 38,
          "skillTier": 26,
          "skinKey": "Vox_Skin_Pirate_T1",
          "turretCaptures": 1,
          "wentAfk": false,
          "winner": false
        }
      },
      "relationships": {
        "player": {
          "data": {
            "type": "player",
            "id": "77db4f0e-1382-11e5-a5ba-06d90c28bf1a"
          }
        }
      }
    },
    {
      "type": "participant",
      "id": "72255cdb-fe1f-11e6-a384-0242ac110003",
      "attributes": {
        "actor": "*Catherine*",
        "stats": {
          "assists": 2,
          "crystalMineCaptures": 0,
          "deaths": 11,
          "farm": 33,
          "firstAfkTime": -1,
          "goldMineCaptures": 0,
          "itemGrants": {
            "*1002_Item_WeaponBlade*": 1,
            "*1015_Item_Oakheart*": 1,
            "*1016_Item_Dragonheart*": 1,
            "*1030_Item_SprintBoots*": 1,
            "*1045_Item_FountainOfRenewal*": 1,
            "*1061_Item_LightShield*": 1,
            "*1062_Item_KineticShield*": 1,
            "*1064_Item_Lifespring*": 1,
            "*1065_Item_HeavySteel*": 1,
            "*1067_Item_BreakingPoint*": 1
          },
          "itemSells": {},
          "itemUses": {
            "*1030_Item_SprintBoots*": 3,
            "*1045_Item_FountainOfRenewal*": 5
          },
          "items": [
            "Health2",
            "BreakingPoint",
            "Boots1",
            "Fountain of Renewal"
          ],
          "jungleKills": 0,
          "karmaLevel": 1,
          "kills": 3,
          "krakenCaptures": 0,
          "level": 8,
          "minionKills": 29,
          "nonJungleMinionKills": 29,
          "skillTier": -1,
          "skinKey": "Catherine_DefaultSkin",
          "turretCaptures": 0,
          "wentAfk": false,
          "winner": false
        }
      },
      "relationships": {
        "player": {
          "data": {
            "type": "player",
            "id": "8bd1afce-d049-11e5-aa97-06d90c28bf1a"
          }
        }
      }
    },
    {
      "type": "participant",
      "id": "a815bff8-fe1f-11e6-8d99-0242ac110004",
      "attributes": {
        "actor": "*Vox*",
        "stats": {
          "assists": 7,
          "crystalMineCaptures": 0,
          "deaths": 7,
          "farm": 172.1,
          "firstAfkTime": -1,
          "goldMineCaptures": 0,
          "itemGrants": {
            "*1000_Item_HalcyonPotion*": 7,
            "*1002_Item_WeaponBlade*": 3,
            "*1004_Item_SwiftShooter*": 1,
            "*1010_Item_BlazingSalvo*": 2,
            "*1015_Item_Oakheart*": 1,
            "*1030_Item_SprintBoots*": 1,
            "*1032_Item_TravelBoots*": 1,
            "*1034_Item_SerpentMask*": 1,
            "*1043_Item_ReflexBlock*": 1,
            "*1049_Item_TyrantsMonocle*": 1,
            "*1052_Item_WeaponInfusion*": 3,
            "*1059_Item_BookOfEulogies*": 1,
            "*1060_Item_BarbedNeedle*": 1,
            "*1061_Item_LightShield*": 1,
            "*1062_Item_KineticShield*": 1,
            "*1063_Item_Aegis*": 1,
            "*1065_Item_HeavySteel*": 1,
            "*1067_Item_BreakingPoint*": 1,
            "*1068_Item_LuckyStrike*": 1,
            "*1080_Item_MinionsFoot*": 1
          },
          "itemSells": {},
          "itemUses": {
            "*1000_Item_HalcyonPotion*": 7,
            "*1030_Item_SprintBoots*": 3,
            "*1032_Item_TravelBoots*": 3,
            "*1043_Item_ReflexBlock*": 1,
            "*1052_Item_WeaponInfusion*": 3,
            "*1063_Item_Aegis*": 7
          },
          "items": [
            "BreakingPoint",
            "Serpent Mask",
            "Crystal Matrix",
            "Critical",
            "Boots2",
            "AttackSpeed2"
          ],
          "jungleKills": 6,
          "karmaLevel": 1,
          "kills": 2,
          "krakenCaptures": 0,
          "level": 30,
          "minionKills": 136,
          "nonJungleMinionKills": 130,
          "skillTier": 27,
          "skinKey": "Vox_Skin_Pirate_T3",
          "turretCaptures": 1,
          "wentAfk": false,
          "winner": false
        }
      },
      "relationships": {
        "player": {
          "data": {
            "type": "player",
            "id": "e35a50ec-2874-11e6-8828-06388a2f2ea7"
          }
        }
      }
    },
    {
      "type": "participant",
      "id": "3010e215-fe1f-11e6-a37d-0242ac110009",
      "attributes": {
        "actor": "*Lance*",
        "stats": {
          "assists": 1,
          "crystalMineCaptures": 0,
          "deaths": 1,
          "farm": 24,
          "firstAfkTime": -1,
          "goldMineCaptures": 0,
          "itemGrants": {
            "*1002_Item_WeaponBlade*": 1,
            "*1014_Item_TornadoTrigger*": 1,
            "*1024_Item_MetalJacket*": 1,
            "*1032_Item_TravelBoots*": 1,
            "*1045_Item_FountainOfRenewal*": 1,
            "*1060_Item_BarbedNeedle*": 1,
            "*1065_Item_HeavySteel*": 1
          },
          "itemSells": {},
          "itemUses": {
            "*1032_Item_TravelBoots*": 1,
            "*1045_Item_FountainOfRenewal*": 2
          },
          "items": [
            "Fountain of Renewal",
            "Tornado Trigger",
            "Boots2",
            "BarbedNeedle",
            "Armor3",
            "Heavy Steel"
          ],
          "jungleKills": 0,
          "karmaLevel": 1,
          "kills": 1,
          "krakenCaptures": 0,
          "level": 28,
          "minionKills": 11,
          "nonJungleMinionKills": 11,
          "skillTier": 0,
          "skinKey": "Lance_Skin_Deathknight",
          "turretCaptures": 0,
          "wentAfk": false,
          "winner": false
        }
      },
      "relationships": {
        "player": {
          "data": {
            "type": "player",
            "id": "dd96873c-cb6b-11e4-a2a8-06eb725f8a76"
          }
        }
      }
    },
    {
      "type": "player",
      "id": "e35a50ec-2874-11e6-8828-06388a2f2ea7",
      "attributes": {
        "name": "r0ny",
        "shardId": "",
        "stats": {
          "level": 30,
          "lifetimeGold": 15564.25,
          "lossStreak": 1,
          "played": 1887,
          "played_ranked": 1033,
          "winStreak": 0,
          "wins": 1085,
          "xp": 175450
        },
        "titleId": ""
      },
      "relationships": {
        "assets": {
          "data": []
        }
      }
    },
    {
      "type": "participant",
      "id": "a815c001-fe1f-11e6-8d99-0242ac110004",
      "attributes": {
        "actor": "*Ardan*",
        "stats": {
          "assists": 9,
          "crystalMineCaptures": 0,
          "deaths": 3,
          "farm": 12,
          "firstAfkTime": -1,
          "goldMineCaptures": 0,
          "itemGrants": {
            "*1015_Item_Oakheart*": 1,
            "*1016_Item_Dragonheart*": 1,
            "*1017_Item_LightArmor*": 1,
            "*1022_Item_CoatOfPlates*": 1,
            "*1026_Item_Hourglass*": 1,
            "*1030_Item_SprintBoots*": 1,
            "*1032_Item_TravelBoots*": 1,
            "*1038_Item_Flare*": 26,
            "*1043_Item_ReflexBlock*": 1,
            "*1045_Item_FountainOfRenewal*": 1,
            "*1046_Item_Crucible*": 1,
            "*1053_Item_CrystalInfusion*": 2,
            "*1054_Item_ScoutTrap*": 31,
            "*1056_Item_WarTreads*": 1,
            "*1057_Item_AtlasPauldron*": 1,
            "*1062_Item_KineticShield*": 1,
            "*1064_Item_Lifespring*": 1,
            "*1073_Item_IronguardContract*": 1,
            "*1088_Item_Flaregun*": 1
          },
          "itemSells": {
            "*1038_Item_Flare*": 5,
            "*1073_Item_IronguardContract*": 1
          },
          "itemUses": {
            "*1030_Item_SprintBoots*": 2,
            "*1032_Item_TravelBoots*": 3,
            "*1038_Item_Flare*": 21,
            "*1043_Item_ReflexBlock*": 1,
            "*1045_Item_FountainOfRenewal*": 8,
            "*1046_Item_Crucible*": 7,
            "*1053_Item_CrystalInfusion*": 2,
            "*1054_Item_ScoutTrap*": 31,
            "*1056_Item_WarTreads*": 2,
            "*1057_Item_AtlasPauldron*": 7,
            "*1088_Item_Flaregun*": 6
          },
          "items": [
            "Fountain of Renewal",
            "Atlas Pauldron",
            "War Treads",
            "Cooldown1",
            "Crucible",
            "Flaregun"
          ],
          "jungleKills": 0,
          "karmaLevel": 2,
          "kills": 2,
          "krakenCaptures": 0,
          "level": 30,
          "minionKills": 8,
          "nonJungleMinionKills": 8,
          "skillTier": 26,
          "skinKey": "Ardan_Skin_Fallen_T3",
          "turretCaptures": 1,
          "wentAfk": false,
          "winner": false
        }
      },
      "relationships": {
        "player": {
          "data": {
            "type": "player",
            "id": "5fc3f028-f3e3-11e5-95ee-06c5ee41a4a5"
          }
        }
      }
    },
    {
      "type": "participant",
      "id": "a815bfe4-fe1f-11e6-8d99-0242ac110004",
      "attributes": {
        "actor": "*Adagio*",
        "stats": {
          "assists": 6,
          "crystalMineCaptures": 0,
          "deaths": 3,
          "farm": 167.9,
          "firstAfkTime": -1,
          "goldMineCaptures": 1,
          "itemGrants": {
            "*1000_Item_HalcyonPotion*": 7,
            "*1003_Item_CrystalBit*": 1,
            "*1004_Item_SwiftShooter*": 1,
            "*1017_Item_LightArmor*": 1,
            "*1022_Item_CoatOfPlates*": 1,
            "*1030_Item_SprintBoots*": 1,
            "*1032_Item_TravelBoots*": 1,
            "*1044_Item_Frostburn*": 1,
            "*1053_Item_CrystalInfusion*": 3,
            "*1055_Item_BrokenMyth*": 1,
            "*1061_Item_LightShield*": 1,
            "*1062_Item_KineticShield*": 1,
            "*1063_Item_Aegis*": 1,
            "*1069_Item_AlternatingCurrent*": 1,
            "*1070_Item_PiercingShard*": 1,
            "*1072_Item_HeavyPrism*": 2,
            "*1087_Item_HalcyonChargers*": 1
          },
          "itemSells": {
            "*1000_Item_HalcyonPotion*": 1
          },
          "itemUses": {
            "*1000_Item_HalcyonPotion*": 6,
            "*1030_Item_SprintBoots*": 1,
            "*1032_Item_TravelBoots*": 5,
            "*1053_Item_CrystalInfusion*": 3,
            "*1063_Item_Aegis*": 3,
            "*1087_Item_HalcyonChargers*": 2
          },
          "items": [
            "LuckyStrike",
            "Armor2",
            "Halcyon Chargers",
            "Broken Myth",
            "Crystal Matrix",
            "Frostburn"
          ],
          "jungleKills": 5,
          "karmaLevel": 2,
          "kills": 9,
          "krakenCaptures": 1,
          "level": 30,
          "minionKills": 139,
          "nonJungleMinionKills": 134,
          "skillTier": 28,
          "skinKey": "Adagio_Skin_Goth_T1",
          "turretCaptures": 3,
          "wentAfk": false,
          "winner": true
        }
      },
      "relationships": {
        "player": {
          "data": {
            "type": "player",
            "id": "545664d2-d4a9-11e4-be24-06eb725f8a76"
          }
        }
      }
    },
    {
      "type": "roster",
      "id": "a815bff4-fe1f-11e6-8d99-0242ac110004",
      "attributes": {
        "stats": {
          "acesEarned": 1,
          "gold": 42687,
          "heroKills": 11,
          "krakenCaptures": 0,
          "side": "right/red",
          "turretKills": 1,
          "turretsRemaining": 0
        }
      },
      "relationships": {
        "participants": {
          "data": [
            {
              "type": "participant",
              "id": "a815bff8-fe1f-11e6-8d99-0242ac110004"
            },
            {
              "type": "participant",
              "id": "a815bffd-fe1f-11e6-8d99-0242ac110004"
            },
            {
              "type": "participant",
              "id": "a815c001-fe1f-11e6-8d99-0242ac110004"
            }
          ]
        },
        "team": {
          "data": null
        }
      }
    },
    {
      "type": "roster",
      "id": "3010e207-fe1f-11e6-a37d-0242ac110009",
      "attributes": {
        "stats": {
          "acesEarned": 0,
          "gold": 46880,
          "heroKills": 7,
          "krakenCaptures": 0,
          "side": "right/red",
          "turretKills": 1,
          "turretsRemaining": 5
        }
      },
      "relationships": {
        "participants": {
          "data": [
            {
              "type": "participant",
              "id": "3010e20b-fe1f-11e6-a37d-0242ac110009"
            },
            {
              "type": "participant",
              "id": "3010e210-fe1f-11e6-a37d-0242ac110009"
            },
            {
              "type": "participant",
              "id": "3010e215-fe1f-11e6-a37d-0242ac110009"
            }
          ]
        },
        "team": {
          "data": null
        }
      }
    },
    {
      "type": "player",
      "id": "d5230dea-1b11-11e6-930a-06fc87f1dd11",
      "attributes": {
        "name": "WalrockYT",
        "shardId": "",
        "stats": {
          "level": 14,
          "lifetimeGold": 27132,
          "lossStreak": 1,
          "played": 96,
          "played_ranked": 32,
          "winStreak": 0,
          "wins": 28,
          "xp": 23196
        },
        "titleId": ""
      },
      "relationships": {
        "assets": {
          "data": []
        }
      }
    },
    {
      "type": "roster",
      "id": "72255cba-fe1f-11e6-a384-0242ac110003",
      "attributes": {
        "stats": {
          "acesEarned": 2,
          "gold": 36578,
          "heroKills": 26,
          "krakenCaptures": 0,
          "side": "left/blue",
          "turretKills": 5,
          "turretsRemaining": 5
        }
      },
      "relationships": {
        "participants": {
          "data": [
            {
              "type": "participant",
              "id": "72255cc2-fe1f-11e6-a384-0242ac110003"
            },
            {
              "type": "participant",
              "id": "72255cc6-fe1f-11e6-a384-0242ac110003"
            },
            {
              "type": "participant",
              "id": "72255cca-fe1f-11e6-a384-0242ac110003"
            }
          ]
        },
        "team": {
          "data": null
        }
      }
    },
    {
      "type": "player",
      "id": "2578d932-8be4-11e4-b310-06d90c28bf1a",
      "attributes": {
        "name": "starboi",
        "shardId": "",
        "stats": {
          "level": 30,
          "lifetimeGold": 14014.25,
          "lossStreak": 0,
          "played": 4677,
          "played_ranked": 3254,
          "winStreak": 1,
          "wins": 2483,
          "xp": 175450
        },
        "titleId": ""
      },
      "relationships": {
        "assets": {
          "data": []
        }
      }
    },
    {
      "type": "player",
      "id": "1bff99d6-eecb-11e5-ad76-06eb725f8a76",
      "attributes": {
        "name": "stablades",
        "shardId": "",
        "stats": {
          "level": 30,
          "lifetimeGold": 13556,
          "lossStreak": 1,
          "played": 1957,
          "played_ranked": 1579,
          "winStreak": 0,
          "wins": 1057,
          "xp": 175450
        },
        "titleId": ""
      },
      "relationships": {
        "assets": {
          "data": []
        }
      }
    },
    {
      "type": "player",
      "id": "754027ca-34ce-11e5-b24b-068789513eb5",
      "attributes": {
        "name": "beiberhole69",
        "shardId": "",
        "stats": {
          "level": 30,
          "lifetimeGold": 11665.625,
          "lossStreak": 0,
          "played": 401,
          "played_ranked": 17,
          "winStreak": 1,
          "wins": 237,
          "xp": 175450
        },
        "titleId": ""
      },
      "relationships": {
        "assets": {
          "data": []
        }
      }
    },
    {
      "type": "player",
      "id": "b3f3d2a4-4f69-11e5-9842-06eb725f8a76",
      "attributes": {
        "name": "Phoenixhawk",
        "shardId": "",
        "stats": {
          "level": 30,
          "lifetimeGold": 11919.375,
          "lossStreak": 0,
          "played": 1217,
          "played_ranked": 109,
          "winStreak": 4,
          "wins": 657,
          "xp": 175450
        },
        "titleId": ""
      },
      "relationships": {
        "assets": {
          "data": []
        }
      }
    },
    {
      "type": "participant",
      "id": "3c2c33e2-fe1f-11e6-a37d-0242ac110009",
      "attributes": {
        "actor": "*Alpha*",
        "stats": {
          "assists": 4,
          "crystalMineCaptures": 0,
          "deaths": 4,
          "farm": 6,
          "firstAfkTime": -1,
          "goldMineCaptures": 0,
          "itemGrants": {
            "*1000_Item_HalcyonPotion*": 2,
            "*1004_Item_SwiftShooter*": 1,
            "*1005_Item_SixSins*": 1,
            "*1010_Item_BlazingSalvo*": 1,
            "*1012_Item_Sorrowblade*": 1,
            "*1017_Item_LightArmor*": 1,
            "*1030_Item_SprintBoots*": 1,
            "*1032_Item_TravelBoots*": 1,
            "*1057_Item_AtlasPauldron*": 1,
            "*1062_Item_KineticShield*": 1,
            "*1065_Item_HeavySteel*": 1,
            "*1066_Item_PiercingSpear*": 1,
            "*1067_Item_BreakingPoint*": 1
          },
          "itemSells": {},
          "itemUses": {
            "*1000_Item_HalcyonPotion*": 2,
            "*1030_Item_SprintBoots*": 2,
            "*1057_Item_AtlasPauldron*": 4
          },
          "items": [
            "Weapon3",
            "BreakingPoint",
            "Boots2",
            "Atlas Pauldron",
            "Shield 2",
            "PiercingSpear"
          ],
          "jungleKills": 0,
          "karmaLevel": 2,
          "kills": 4,
          "krakenCaptures": 0,
          "level": 30,
          "minionKills": 3,
          "nonJungleMinionKills": 3,
          "skillTier": 25,
          "skinKey": "Alpha_Skin_Horror_T2",
          "turretCaptures": 3,
          "wentAfk": false,
          "winner": false
        }
      },
      "relationships": {
        "player": {
          "data": {
            "type": "player",
            "id": "71e8f0ca-ac29-11e5-b475-06eb725f8a76"
          }
        }
      }
    },
    {
      "type": "player",
      "id": "545664d2-d4a9-11e4-be24-06eb725f8a76",
      "attributes": {
        "name": "Stan024135",
        "shardId": "",
        "stats": {
          "level": 30,
          "lifetimeGold": 17858.75,
          "lossStreak": 2,
          "played": 2505,
          "played_ranked": 1186,
          "winStreak": 0,
          "wins": 1455,
          "xp": 175450
        },
        "titleId": ""
      },
      "relationships": {
        "assets": {
          "data": []
        }
      }
    },
    {
      "type": "participant",
      "id": "199d7ef3-fe20-11e6-8d40-0242ac11000a",
      "attributes": {
        "actor": "*Samuel*",
        "stats": {
          "assists": 2,
          "crystalMineCaptures": 0,
          "deaths": 6,
          "farm": 37.85,
          "firstAfkTime": -1,
          "goldMineCaptures": 0,
          "itemGrants": {
            "*1000_Item_HalcyonPotion*": 8,
            "*1030_Item_SprintBoots*": 1,
            "*1042_Item_Shiversteel*": 1,
            "*1052_Item_WeaponInfusion*": 1,
            "*1056_Item_WarTreads*": 1,
            "*1074_Item_StormguardBanner*": 1,
            "*1087_Item_HalcyonChargers*": 1
          },
          "itemSells": {},
          "itemUses": {
            "*1000_Item_HalcyonPotion*": 7,
            "*1030_Item_SprintBoots*": 1,
            "*1042_Item_Shiversteel*": 1,
            "*1056_Item_WarTreads*": 4,
            "*1087_Item_HalcyonChargers*": 3
          },
          "items": [
            "Halcyon Chargers",
            "War Treads",
            "Mulled Wine",
            "Weapon Infusion",
            "Shiversteel",
            "StormguardBanner"
          ],
          "jungleKills": 1,
          "karmaLevel": 1,
          "kills": 3,
          "krakenCaptures": 0,
          "level": 1,
          "minionKills": 28,
          "nonJungleMinionKills": 27,
          "skillTier": -1,
          "skinKey": "Samuel_DefaultSkin",
          "turretCaptures": 4,
          "wentAfk": false,
          "winner": false
        }
      },
      "relationships": {
        "player": {
          "data": {
            "type": "player",
            "id": "66342c76-fe09-11e6-bbee-06c5ee41a4a5"
          }
        }
      }
    },
    {
      "type": "participant",
      "id": "72255cc6-fe1f-11e6-a384-0242ac110003",
      "attributes": {
        "actor": "*SAW*",
        "stats": {
          "assists": 7,
          "crystalMineCaptures": 2,
          "deaths": 5,
          "farm": 88,
          "firstAfkTime": -1,
          "goldMineCaptures": 1,
          "itemGrants": {
            "*1002_Item_WeaponBlade*": 3,
            "*1005_Item_SixSins*": 1,
            "*1012_Item_Sorrowblade*": 1,
            "*1030_Item_SprintBoots*": 1,
            "*1032_Item_TravelBoots*": 1,
            "*1034_Item_SerpentMask*": 1,
            "*1043_Item_ReflexBlock*": 1,
            "*1059_Item_BookOfEulogies*": 1,
            "*1060_Item_BarbedNeedle*": 1,
            "*1061_Item_LightShield*": 1,
            "*1063_Item_Aegis*": 1,
            "*1065_Item_HeavySteel*": 1,
            "*1068_Item_LuckyStrike*": 1
          },
          "itemSells": {},
          "itemUses": {
            "*1032_Item_TravelBoots*": 1,
            "*1043_Item_ReflexBlock*": 3
          },
          "items": [
            "Serpent Mask",
            "Weapon3",
            "Boots2",
            "Crystal Matrix",
            "LuckyStrike",
            "Six Sins"
          ],
          "jungleKills": 4,
          "karmaLevel": 2,
          "kills": 13,
          "krakenCaptures": 0,
          "level": 17,
          "minionKills": 65,
          "nonJungleMinionKills": 61,
          "skillTier": 7,
          "skinKey": "SAW_DefaultSkin",
          "turretCaptures": 4,
          "wentAfk": false,
          "winner": true
        }
      },
      "relationships": {
        "player": {
          "data": {
            "type": "player",
            "id": "95b85916-a89d-11e6-90ee-06d90c28bf1a"
          }
        }
      }
    },
    {
      "type": "player",
      "id": "5fc3f028-f3e3-11e5-95ee-06c5ee41a4a5",
      "attributes": {
        "name": "prples0x",
        "shardId": "",
        "stats": {
          "level": 30,
          "lifetimeGold": 13567.25,
          "lossStreak": 0,
          "played": 1490,
          "played_ranked": 1099,
          "winStreak": 1,
          "wins": 798,
          "xp": 175450
        },
        "titleId": ""
      },
      "relationships": {
        "assets": {
          "data": []
        }
      }
    },
    {
      "type": "player",
      "id": "3756967e-01c4-11e6-aeec-06f4ee369f53",
      "attributes": {
        "name": "guada01",
        "shardId": "",
        "stats": {
          "level": 30,
          "lifetimeGold": 13885.5,
          "lossStreak": 0,
          "played": 1061,
          "played_ranked": 447,
          "winStreak": 3,
          "wins": 562,
          "xp": 175450
        },
        "titleId": ""
      },
      "relationships": {
        "assets": {
          "data": []
        }
      }
    },
    {
      "type": "participant",
      "id": "3010e20b-fe1f-11e6-a37d-0242ac110009",
      "attributes": {
        "actor": "*Ringo*",
        "stats": {
          "assists": 4,
          "crystalMineCaptures": 0,
          "deaths": 5,
          "farm": 63.825,
          "firstAfkTime": -1,
          "goldMineCaptures": 0,
          "itemGrants": {
            "*1002_Item_WeaponBlade*": 1,
            "*1005_Item_SixSins*": 2,
            "*1012_Item_Sorrowblade*": 1,
            "*1014_Item_TornadoTrigger*": 1,
            "*1030_Item_SprintBoots*": 1,
            "*1035_Item_TensionBow*": 1,
            "*1047_Item_JourneyBoots*": 1,
            "*1049_Item_TyrantsMonocle*": 1,
            "*1052_Item_WeaponInfusion*": 1,
            "*1066_Item_PiercingSpear*": 1,
            "*1068_Item_LuckyStrike*": 1,
            "*1080_Item_MinionsFoot*": 1,
            "*1105_Item_SlumberingHusk*": 1
          },
          "itemSells": {},
          "itemUses": {
            "*1030_Item_SprintBoots*": 1,
            "*1047_Item_JourneyBoots*": 2,
            "*1052_Item_WeaponInfusion*": 1
          },
          "items": [
            "Weapon3",
            "Tornado Trigger",
            "Critical",
            "Tension Bow",
            "Boots3",
            "SlumberingHusk"
          ],
          "jungleKills": 16,
          "karmaLevel": 1,
          "kills": 2,
          "krakenCaptures": 0,
          "level": 30,
          "minionKills": 21,
          "nonJungleMinionKills": 5,
          "skillTier": 15,
          "skinKey": "Ringo_Skin_Bakuto",
          "turretCaptures": 1,
          "wentAfk": false,
          "winner": false
        }
      },
      "relationships": {
        "player": {
          "data": {
            "type": "player",
            "id": "a7748390-207d-11e5-8352-06eb725f8a76"
          }
        }
      }
    },
    {
      "type": "participant",
      "id": "3c2c33d9-fe1f-11e6-a37d-0242ac110009",
      "attributes": {
        "actor": "*Hero009*",
        "stats": {
          "assists": 2,
          "crystalMineCaptures": 0,
          "deaths": 3,
          "farm": 32,
          "firstAfkTime": -1,
          "goldMineCaptures": 0,
          "itemGrants": {
            "*1002_Item_WeaponBlade*": 1,
            "*1004_Item_SwiftShooter*": 2,
            "*1010_Item_BlazingSalvo*": 2,
            "*1016_Item_Dragonheart*": 1,
            "*1017_Item_LightArmor*": 1,
            "*1022_Item_CoatOfPlates*": 1,
            "*1030_Item_SprintBoots*": 1,
            "*1032_Item_TravelBoots*": 1,
            "*1061_Item_LightShield*": 1,
            "*1062_Item_KineticShield*": 1,
            "*1067_Item_BreakingPoint*": 1
          },
          "itemSells": {},
          "itemUses": {
            "*1030_Item_SprintBoots*": 1,
            "*1032_Item_TravelBoots*": 2
          },
          "items": [
            "Armor2",
            "Shield 2",
            "BreakingPoint",
            "AttackSpeed2",
            "Health2",
            "Boots2"
          ],
          "jungleKills": 0,
          "karmaLevel": 1,
          "kills": 5,
          "krakenCaptures": 0,
          "level": 30,
          "minionKills": 11,
          "nonJungleMinionKills": 11,
          "skillTier": -1,
          "skinKey": "Krul_Skin_Summer",
          "turretCaptures": 4,
          "wentAfk": false,
          "winner": true
        }
      },
      "relationships": {
        "player": {
          "data": {
            "type": "player",
            "id": "b3f3d2a4-4f69-11e5-9842-06eb725f8a76"
          }
        }
      }
    },
    {
      "type": "player",
      "id": "eeabb346-c49b-11e6-a337-06a9175d25fa",
      "attributes": {
        "name": "LaaSerpiente",
        "shardId": "",
        "stats": {
          "level": 12,
          "lifetimeGold": 6690.41650390625,
          "lossStreak": 0,
          "played": 50,
          "played_ranked": 0,
          "winStreak": 2,
          "wins": 27,
          "xp": 11295
        },
        "titleId": ""
      },
      "relationships": {
        "assets": {
          "data": []
        }
      }
    },
    {
      "type": "participant",
      "id": "a815bfef-fe1f-11e6-8d99-0242ac110004",
      "attributes": {
        "actor": "*Phinn*",
        "stats": {
          "assists": 10,
          "crystalMineCaptures": 0,
          "deaths": 4,
          "farm": 8.7,
          "firstAfkTime": -1,
          "goldMineCaptures": 1,
          "itemGrants": {
            "*1015_Item_Oakheart*": 1,
            "*1016_Item_Dragonheart*": 2,
            "*1017_Item_LightArmor*": 1,
            "*1022_Item_CoatOfPlates*": 2,
            "*1024_Item_MetalJacket*": 1,
            "*1026_Item_Hourglass*": 1,
            "*1028_Item_Chronograph*": 1,
            "*1030_Item_SprintBoots*": 1,
            "*1032_Item_TravelBoots*": 1,
            "*1038_Item_Flare*": 2,
            "*1045_Item_FountainOfRenewal*": 1,
            "*1053_Item_CrystalInfusion*": 1,
            "*1054_Item_ScoutTrap*": 22,
            "*1057_Item_AtlasPauldron*": 1,
            "*1073_Item_IronguardContract*": 1,
            "*1095_Item_NullwaveGauntlet*": 1
          },
          "itemSells": {
            "*1073_Item_IronguardContract*": 1
          },
          "itemUses": {
            "*1030_Item_SprintBoots*": 2,
            "*1032_Item_TravelBoots*": 6,
            "*1038_Item_Flare*": 2,
            "*1045_Item_FountainOfRenewal*": 6,
            "*1053_Item_CrystalInfusion*": 1,
            "*1054_Item_ScoutTrap*": 22,
            "*1057_Item_AtlasPauldron*": 4,
            "*1095_Item_NullwaveGauntlet*": 5
          },
          "items": [
            "Atlas Pauldron",
            "Boots2",
            "Fountain of Renewal",
            "NullwaveGauntlet",
            "Armor3",
            "Health2"
          ],
          "jungleKills": 2,
          "karmaLevel": 2,
          "kills": 1,
          "krakenCaptures": 1,
          "level": 30,
          "minionKills": 9,
          "nonJungleMinionKills": 7,
          "skillTier": 25,
          "skinKey": "Phinn_Skin_Troll_T3",
          "turretCaptures": 4,
          "wentAfk": false,
          "winner": true
        }
      },
      "relationships": {
        "player": {
          "data": {
            "type": "player",
            "id": "38ea2904-1c6b-11e5-a382-06eb725f8a76"
          }
        }
      }
    }
  ]
}""";

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

  test("Can get match results", () async {
    List<Item> items = await new Query<Item>().fetch();

    var matches = VGMatch.matchesFrom(realJSON, items);
    expect(matches.length, equals(1));
  });
}
