import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:shattered_star/application/home/bloc/home_page_bloc.dart';

class SSHomeCard extends StatefulWidget {
  final String title;
  final String image;
  final Function onTap;

  SSHomeCard({
    @required this.title,
    @required this.image,
    @required this.onTap,
  });

  @override
  _SSHomeCardState createState() => _SSHomeCardState();
}

class _SSHomeCardState extends State<SSHomeCard> {
  bool test = false;
  bool longPress = false;

  @override
  Widget build(BuildContext context) {
    print('test $test');

    return BlocBuilder<HomePageBloc, HomePageState>(
      builder: (context, state) {
        return GestureDetector(
          onTapDown: (details) {
            test = true;
            context.bloc<HomePageBloc>().add(HomePageEvent.cardPressed());
            print('test $test');
          },
          onTapUp: (details) {
            test = false;
            print('test $test');
            context.bloc<HomePageBloc>().add(HomePageEvent.cardReleased());
            print(state);
          },
          onTapCancel: () {
            test = false;
            context.bloc<HomePageBloc>().add(HomePageEvent.cardReleased());
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
              child: Image.asset(
                widget.image,
                fit: BoxFit.contain,
                height: 10,
              ),
            ),
          ),
        );
      },
    );
  }
}
