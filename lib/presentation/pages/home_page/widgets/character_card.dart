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
  final Color statBlocTextColor;
  // final Color charDetailTextColor;
  // final Color charDetailBackgroundColor;

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
    @required this.statBlocTextColor,
    // @required this.charDetailTextColor,
    // @required this.charDetailBackgroundColor,
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
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    characterImagePath,
                    fit: BoxFit.scaleDown,
                    height: 175,
                  ),
                ),
              ),
            ),
            Expanded(
              child: DefaultTextStyle(
                style: TextStyle(
                  // backgroundColor: charDetailBackgroundColor,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                child: Column(
                  children: <Widget>[
                    Text(characterName),
                    SizedBox(height: 8),
                    Text('$characterRace $characterClass'),
                    SizedBox(height: 8),
                    Text('level: $characterLevel'),
                    SizedBox(height: 8),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DefaultTextStyle(
                    style: TextStyle(
                      color: statBlocTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text('$characterStr STR'),
                        SizedBox(height: 8),
                        Text('$characterDex DEX'),
                        SizedBox(height: 8),
                        Text('$characterCon CON'),
                        SizedBox(height: 8),
                        Text('$characterInt INT'),
                        SizedBox(height: 8),
                        Text('$characterWis WIS'),
                        SizedBox(height: 8),
                        Text('$characterCha CHA'),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
