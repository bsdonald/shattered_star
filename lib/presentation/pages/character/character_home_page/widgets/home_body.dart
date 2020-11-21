import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:shattered_star/application/home/bloc/home_page_bloc.dart';
import 'package:shattered_star/domain/character/character.dart';
import 'package:shattered_star/dummy_data/Reily.dart';
import 'package:shattered_star/injection.dart';
import 'package:shattered_star/presentation/pages/character/character_details_page/widgets/pc_card.dart';
import 'package:shattered_star/presentation/pages/character/character_home_page/widgets/character_card.dart';
import 'package:shattered_star/presentation/pages/character/character_home_page/widgets/ss_home_card.dart';
import 'package:shattered_star/presentation/routes/router.gr.dart';

class HomeBody extends StatefulWidget {
  final Character character;

  const HomeBody({Key key, @required this.character}) : super(key: key);
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  PaletteGenerator paletteGenerator;
   String characterImage = 'assets/images/reily.png';
  @override
  void initState() {
    super.initState();
    _generatePalette(widget.character.imagePath.getOrCrash());
  }

  @override
  Widget build(BuildContext context) {
    var paletteColor1 = paletteGenerator?.lightMutedColor?.color ?? Theme.of(context).scaffoldBackgroundColor;
    var paletteColor2 = paletteGenerator?.dominantColor?.color ?? Theme.of(context).primaryColor;
    var paletteColor3 = paletteGenerator?.darkMutedColor?.color ?? Theme.of(context).cardColor;
    var statBlocTextColor = paletteGenerator?.lightMutedColor?.color ?? Colors.white;
    var myGradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        paletteColor1,
        paletteColor2,
        paletteColor3,
      ],
    );
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CharacterCard(
              character: widget.character,
              backgroundGradient: myGradient,
              statBlocTextColor: statBlocTextColor),
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
    if (imagePath.isNotEmpty) {
      paletteGenerator = await PaletteGenerator.fromImageProvider(
        NetworkImage(imagePath),
        // size: Size(110, 150),
        maximumColorCount: 20,
      );
      setState(() {});
    } else {
      setState(() {});
    }
  }
}
