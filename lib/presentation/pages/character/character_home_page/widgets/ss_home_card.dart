import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shattered_star/application/home/bloc/home_page_bloc.dart';
import 'package:shattered_star/domain/character/character.dart';

class SSHomeCard extends StatefulWidget {
  final String title;
  final String image;
  final Function onTap;
  final Alignment gradientAlignment;
  final Character character;

  SSHomeCard({
    @required this.title,
    @required this.image,
    @required this.onTap,
    @required this.gradientAlignment,
    @required this.character,
  });

  @override
  _SSHomeCardState createState() => _SSHomeCardState();
}

class _SSHomeCardState extends State<SSHomeCard> {
  bool test = false;
  bool longPress = false;

  @override
  Widget build(BuildContext context) {
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
          onTap: widget.onTap,
          child: Card(
            child: GridTile(
              footer: !test
                  ? null
                  : GridTileBar(
                      backgroundColor: Theme.of(context).accentColor.withOpacity(0.85),
                      title: Text(
                        widget.title,
                        textAlign: TextAlign.center,
                      ),
                    ),
              child: Ink(
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: [
                      widget.character.primaryGradientColor.getOrCrash(),
                      widget.character.secondaryGradientColor.getOrCrash(),
                      widget.character.tertiaryGradientColor.getOrCrash(),
                    ],
                    center: widget.gradientAlignment,
                    radius: 1.75,
                    tileMode: TileMode.clamp,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                child: Image.asset(
                  widget.image,
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
