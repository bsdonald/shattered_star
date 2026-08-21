import 'package:flutter/material.dart';

class Character {
  const Character({
    required this.name,
    required this.race,
    required this.className,
    required this.level,
    required this.image,
    required this.color,
    required this.stats,
    required this.gender,
    required this.age,
    required this.height,
    required this.weight,
    required this.home,
    required this.alignment,
    required this.deity,
    required this.languages,
    required this.bio,
  });

  final String name;
  final String race;
  final String className;
  final int level;
  final String image;
  final Color color;
  final String gender;
  final int age;
  final String height;
  final String weight;
  final String home;
  final String alignment;
  final String deity;
  final String languages;
  final CharacterStats stats;
  final String bio;
}

class CharacterStats {
  const CharacterStats({
    required this.str,
    required this.dex,
    required this.con,
    required this.intelligence,
    required this.wis,
    required this.cha,
    required this.maxHp,
    required this.ac,
    required this.cmd,
    required this.cmb,
    required this.melee,
    required this.ranged,
  });

  final int str;
  final int dex;
  final int con;
  final int intelligence;
  final int wis;
  final int cha;
  final int maxHp;
  final int ac;
  final int cmd;
  final int cmb;
  final int melee;
  final int ranged;
}
