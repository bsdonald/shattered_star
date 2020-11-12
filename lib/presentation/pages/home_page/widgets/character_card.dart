import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:shattered_star/presentation/pages/character_details_page/widgets/pc_card.dart';
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
          builder: (_) => PCCard(
            name: characterName,
            favoredClass: characterClass,
            level: characterLevel,
            race: characterRace,
            gender: 'Female',
            age: 24,
            feet: 5,
            inches: 4,
            weight: 125,
            home: 'Magnimar',
            alignment: 'Lawful Good',
            diety: 'Iori',
            languages: 'Common, Celetsial, Elven',
            characterStr: characterStr,
            characterDex: characterDex,
            characterCon: characterCon,
            characterInt: characterInt,
            characterWis: characterWis,
            characterCha: characterCha,
            characterMaxHP: 22,
            characterAC: 18,
            characterFort: '+4',
            characterRef: '+5',
            characterWill: '+4',
            characterMelee: '+7',
            characterRanged: '+4',
            characterCMD: '+23',
            characterCMB: '+7',
            imagePath: characterImagePath,
            bio:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. \n \n'
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. \n \n'
                'this is a test',
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
