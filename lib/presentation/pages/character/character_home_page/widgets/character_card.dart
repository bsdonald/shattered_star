import 'package:flutter/material.dart';
import 'package:shattered_star/domain/character/character.dart';
import 'package:shattered_star/presentation/pages/character/widgets/character_overview_card/character_overview_card.dart';
import 'package:shattered_star/presentation/pages/character/widgets/player_character_card/player_character_card.dart';

//TODO: CONSIDER RENAMING
class CharacterCard extends StatelessWidget {
  final Character character;

  const CharacterCard({Key? key, required this.character}) : super(key: key);

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
            child: PlayerCharacterCard(isEditing: false, character: character),
          ),
        );
      },
      child: CharacterOverviewCard(character),
    );
  }
}
