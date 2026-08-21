import 'package:flutter/material.dart';

import '../../core/app_theme.dart';
import 'campaign.dart';
import 'character.dart';

const campaigns = [
  Campaign('The Ashen Crown', '5 players · Active now', moss),
  Campaign('Moonlit Ruins', '2 players · Active now', Color(0xFF8C675E)),
];

const characters = [
  Character(
    name: 'Dragonarkon',
    race: 'Awoken',
    className: 'Warlock',
    level: 1100,
    image: 'assets/images/IMG_2211.JPG',
    color: Color(0xFF80B1A2),
    gender: 'Female',
    age: 5,
    height: 'Unknown',
    weight: 'Unknown',
    home: 'Unknown',
    alignment: 'The Traveler',
    deity: 'The Traveler',
    languages: 'Common, Celestial',
    stats: CharacterStats(
      str: 14,
      dex: 14,
      con: 16,
      intelligence: 20,
      wis: 18,
      cha: 15,
      maxHp: 200,
      ac: 180,
      cmd: 180,
      cmb: 180,
      melee: 2,
      ranged: 180,
    ),
    bio: "A silly Warlock who thinks she's a dragon.",
  ),
  Character(
    name: 'Reily',
    race: 'Aasimar',
    className: 'Monk',
    level: 2,
    image: 'assets/images/Reily.png',
    color: Color(0xFF9CB595),
    gender: 'Female',
    age: 24,
    height: '5 ft 4 in',
    weight: '125 lb',
    home: 'Magnimar',
    alignment: 'Lawful Good',
    deity: 'Irori',
    languages: 'Common, Celestial, Elven',
    stats: CharacterStats(
      str: 20,
      dex: 15,
      con: 12,
      intelligence: 12,
      wis: 18,
      cha: 13,
      maxHp: 22,
      ac: 18,
      cmd: 23,
      cmb: 7,
      melee: 7,
      ranged: 4,
    ),
    bio: 'A disciplined wanderer with a kind heart and a dangerous staff.',
  ),
];
