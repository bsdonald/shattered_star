import 'package:flutter/material.dart';
import 'package:shattered_star/domain/character/character.dart';

//TODO: CONSIDER RENAMING
class CharacterOverviewCard extends StatelessWidget {
  final Character character;

  const CharacterOverviewCard(this.character);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Ink(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              character.primaryGradientColor.getOrCrash(),
              character.secondaryGradientColor.getOrCrash(),
              character.tertiaryGradientColor.getOrCrash(),
            ],
          ),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: character.imagePath.getOrCrash().isEmpty
                        ? Container()
                        : Image.network(
                            character.imagePath.getOrCrash(),
                            fit: BoxFit.scaleDown,
                            height: 175,
                          ),
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
                      Text(character.name.getOrCrash()),
                      SizedBox(height: 8),
                      Text(
                        '${character.race.getOrCrash()} ${character.favoredClass.getOrCrash()}',
                        maxLines: 1,
                      ),
                      SizedBox(height: 8),
                      Text('level: ${character.level.getOrCrash()}'),
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
                      color: character.secondaryTextColor.getOrCrash(),
                      fontWeight: FontWeight.bold,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text('${character.strength.getOrCrash()} STR'),
                        SizedBox(height: 8),
                        Text('${character.dexterity.getOrCrash()} DEX'),
                        SizedBox(height: 8),
                        Text('${character.constitution.getOrCrash()} CON'),
                        SizedBox(height: 8),
                        Text('${character.intelligence.getOrCrash()} INT'),
                        SizedBox(height: 8),
                        Text('${character.wisdom.getOrCrash()} WIS'),
                        SizedBox(height: 8),
                        Text('${character.charisma.getOrCrash()} CHA'),
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
