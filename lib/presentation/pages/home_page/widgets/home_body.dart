import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:shattered_star/application/home/bloc/home_page_bloc.dart';
import 'package:shattered_star/injection.dart';
import 'package:shattered_star/presentation/pages/home_page/widgets/character_card.dart';
import 'package:shattered_star/presentation/pages/home_page/widgets/ss_home_card.dart';
import 'package:shattered_star/presentation/routes/router.gr.dart';

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  PaletteGenerator paletteGenerator;
  String characterImage = 'assets/images/reily.png';
  @override
  void initState() {
    super.initState();
    _generatePalette(characterImage);
  }

  @override
  Widget build(BuildContext context) {
    var myGradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        paletteGenerator.lightMutedColor.color,
        paletteGenerator.dominantColor.color,
        paletteGenerator.darkMutedColor.color,
      ],
    );
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CharacterCard(
              characterImagePath: characterImage,
              characterName: 'Reily',
              characterLevel: 2,
              characterRace: 'Aasimar',
              characterClass: 'Monk',
              characterStr: 20,
              characterDex: 15,
              characterCon: 12,
              characterInt: 12,
              characterWis: 18,
              characterCha: 13,
              backgroundGradient: myGradient,
              statBlocTextColor: paletteGenerator.lightMutedColor.color),
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
                image: 'assets/images/inventory.png',
                title: 'Inventory',
                onTap: () {
                  ExtendedNavigator.of(context).push(Routes.test);
                },
                gradientAlignment: Alignment.bottomRight,
              ),
              SSHomeCard(
                image: 'assets/images/quest_items.png',
                title: 'Quest Items',
                onTap: () {
                  ExtendedNavigator.of(context).push(Routes.test);
                },
                gradientAlignment: Alignment.bottomLeft,
              ),
              SSHomeCard(
                image: 'assets/images/characters_npcs.png',
                title: 'Characters/NPCs',
                onTap: () {
                  ExtendedNavigator.of(context).push(Routes.test);
                },
                gradientAlignment: Alignment.topRight,
              ),
              SSHomeCard(
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

  Future<void> _generatePalette(String imagePath) async {
    paletteGenerator = await PaletteGenerator.fromImageProvider(
      AssetImage(imagePath),
      // size: Size(110, 150),
      maximumColorCount: 20,
    );
    setState(() {});
  }
}
