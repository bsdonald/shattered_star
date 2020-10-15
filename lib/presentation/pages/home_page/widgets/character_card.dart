import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

class CharacterCard extends StatelessWidget {
  final String characterImagePath;
  final String characterName;
  final int characterLevel;
  final String characterClass;
  final String characterRace;
  final int characterStr;
  final int characterDex;
  final int characterCon;
  final int characterInt;
  final int characterWis;
  final int characterCha;
  final LinearGradient backgroundGradient;

  const CharacterCard({
    @required this.characterImagePath,
    @required this.characterName,
    @required this.characterLevel,
    @required this.backgroundGradient,
    @required this.characterRace,
    @required this.characterClass,
    @required this.characterStr,
    @required this.characterDex,
    @required this.characterCon,
    @required this.characterInt,
    @required this.characterWis,
    @required this.characterCha,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Ink(
        decoration: BoxDecoration(
          gradient: backgroundGradient,
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        child: Row(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                characterImagePath,
                fit: BoxFit.scaleDown,
                height: 175,
              ),
            ),
            Column(
              children: <Widget>[
                Text(characterName),
                Text('level: characterLevel'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
