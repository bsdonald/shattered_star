import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shattered_star/domain/character/character.dart';
import 'package:shattered_star/presentation/pages/character/character_home_page/widgets/character_card.dart';
import 'package:shattered_star/presentation/pages/character/character_home_page/widgets/ss_home_card.dart';
import 'package:shattered_star/presentation/routes/router.gr.dart';

class HomeBody extends StatelessWidget {
  final Character character;

  const HomeBody({Key? key, required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CharacterCard(character),
        ),
        Expanded(
          child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(8),
            crossAxisCount: 2,
            childAspectRatio: 1.25,
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              SSHomeCard(
                character: character,
                image: 'assets/images/inventory.png',
                title: 'Inventory',
                onTap: () {
                  ExtendedNavigator.of(context).push(Routes.test);
                },
                gradientAlignment: Alignment.bottomRight,
              ),
              SSHomeCard(
                character: character,
                image: 'assets/images/quest_items.png',
                title: 'Quest Items',
                onTap: () {
                  ExtendedNavigator.of(context).push(Routes.test);
                },
                gradientAlignment: Alignment.bottomLeft,
              ),
              SSHomeCard(
                character: character,
                image: 'assets/images/characters_npcs.png',
                title: 'Characters/NPCs',
                onTap: () {
                  ExtendedNavigator.of(context).push(Routes.test);
                },
                gradientAlignment: Alignment.topRight,
              ),
              SSHomeCard(
                character: character,
                image: 'assets/images/journal1.png',
                title: 'Journal',
                onTap: () {
                  ExtendedNavigator.of(context).push(Routes.test);
                },
                gradientAlignment: Alignment.topLeft,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
