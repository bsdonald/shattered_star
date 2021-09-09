import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shattered_star/application/home/bloc/home_page_bloc.dart';
import 'package:shattered_star/domain/character/character.dart';

class SSHomeCard extends StatelessWidget {
  final String title;
  final String image;
  final void Function()? onTap;
  final Alignment gradientAlignment;
  final Character character;

  const SSHomeCard({
    Key? key,
    required this.title,
    required this.image,
    required this.onTap,
    required this.gradientAlignment,
    required this.character,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool test;
    test = false;
    return BlocBuilder<HomePageBloc, HomePageState>(
      builder: (context, state) {
        return GestureDetector(
          onTapDown: (details) {
            test = true;
            context.read<HomePageBloc>().add(HomePageEvent.cardPressed());
          },
          onTapUp: (details) {
            test = false;
            context.read<HomePageBloc>().add(HomePageEvent.cardReleased());
          },
          onTapCancel: () {
            test = false;
            context.read<HomePageBloc>().add(HomePageEvent.cardReleased());
          },
          onTap: onTap,
          child: Card(
            child: GridTile(
              footer: !test
                  ? null
                  : GridTileBar(
                      backgroundColor: Theme.of(context).accentColor.withOpacity(0.85),
                      title: Text(
                        title,
                        textAlign: TextAlign.center,
                      ),
                    ),
              child: Ink(
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: [
                      character.primaryGradientColor.getOrCrash(),
                      character.secondaryGradientColor.getOrCrash(),
                      character.tertiaryGradientColor.getOrCrash(),
                    ],
                    center: gradientAlignment,
                    radius: 1.75,
                    tileMode: TileMode.clamp,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                child: Image.asset(
                  image,
                  fit: BoxFit.contain,
                  height: 10,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
