import 'package:flutter/material.dart';
import 'package:shattered_star/domain/character/character.dart';
import 'package:shattered_star/presentation/pages/character/widgets/player_character_card/character_bio.dart';
import 'package:shattered_star/presentation/pages/character/widgets/player_character_card/character_details_field.dart';
import 'package:shattered_star/presentation/pages/character/widgets/player_character_card/character_stats_field.dart';
import 'package:shattered_star/presentation/pages/character/widgets/player_character_card/image_field.dart';
import 'package:shattered_star/presentation/pages/character/widgets/player_character_card/name_plate.dart';

class PlayerCharacterCard extends StatelessWidget {
  final bool isEditing;
  final Character character;

  const PlayerCharacterCard({
    Key? key,
    required this.isEditing,
    required this.character,
  }) : super(key: key);

  void show(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final textBlocColor = Theme.of(context).scaffoldBackgroundColor;
    // isEditing ?? false;
    return SingleChildScrollView(
      child: Container(
        height: !isEditing ? MediaQuery.of(context).size.height * .75 : MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Theme.of(context).cardColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              NamePlate(
                isEditing: isEditing,
                character: character,
                color: textBlocColor,
              ),
              SizedBox(
                height: 12,
              ),
              Expanded(
                flex: !isEditing ? 5 : 2,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 4,
                      child: ImageField(isEditing: isEditing, character: character),
                    ),
                    Expanded(
                      flex: 5,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: CharacterDetailsField(
                          isEditing: isEditing,
                          character: character,
                          color: textBlocColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Expanded(
                flex: !isEditing ? 1 : 0,
                child: CharacterStatsField(
                  isEditing: isEditing,
                  character: character,
                  color: textBlocColor,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Expanded(
                flex: !isEditing ? 4 : 1,
                child: CharacterBio(
                  isEditing: isEditing,
                  character: character,
                  color: textBlocColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
