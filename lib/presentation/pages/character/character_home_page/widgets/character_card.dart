import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shattered_star/domain/character/character.dart';
import 'package:shattered_star/presentation/pages/character/widgets/character_overview_card/character_overview_card.dart';
import 'package:shattered_star/presentation/pages/character/widgets/player_character_card/player_character_card.dart';

//TODO: CONSIDER RENAMING
class CharacterCard extends StatelessWidget {
  final Character character;
  final LinearGradient backgroundGradient;
  final Color statBlocTextColor;
  // final Color charDetailTextColor;
  // final Color charDetailBackgroundColor;

  const CharacterCard({
    @required this.backgroundGradient,
    @required this.statBlocTextColor,
    @required this.character,
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
            child: PlayerCharacterCard(isEditing: false, character: character),
          ),
        );
      },
      child: CharacterOverviewCard(
        backgroundGradient: backgroundGradient,
        statBlocTextColor: statBlocTextColor,
        character: character,
      ),
    );
  }
}
