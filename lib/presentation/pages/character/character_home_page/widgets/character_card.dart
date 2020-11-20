import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:shattered_star/presentation/pages/character/character_details_page/widgets/pc_card.dart';
import 'package:shattered_star/presentation/pages/character/widgets/player_character_card/player_character_card.dart';
import 'package:shattered_star/presentation/routes/router.gr.dart';

//TODO: CONSIDER RENAMING
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
    return InkWell(
      onTap: () {
        // ExtendedNavigator.of(context).push(Routes.characterDetailsPage);
        showDialog(
          context: context,
          builder: (_) => Dialog(
            // margin: EdgeInsets.all(8),
            insetPadding: EdgeInsets.all(8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: PlayerCharacterCard(isEditing: false),
          ),
        );
      },
      child: Card(
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
                    child: characterImagePath.isEmpty
                        ? Container()
                        : Image.asset(
                            characterImagePath,
                            fit: BoxFit.scaleDown,
                            height: 175,
                          ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Align(
                  alignment: Alignment.center,
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
                        Text(
                          '$characterRace $characterClass',
                          maxLines: 1,
                        ),
                        SizedBox(height: 8),
                        Text('level: $characterLevel'),
                        SizedBox(height: 8),
                      ],
                    ),
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
      ),
    );
  }
}
