import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shattered_star/application/home/bloc/home_page_bloc.dart';
import 'package:shattered_star/injection.dart';
import 'package:shattered_star/presentation/notes/notes_overview.dart/widgets/ss_home_card.dart';
import 'package:shattered_star/presentation/routes/router.gr.dart';

class NotesOverviewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 10,
            // color: Colors.white,
            child: Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/images/Reily.png',
                    fit: BoxFit.scaleDown,
                    height: 175,
                  ),
                ),
                Column(
                  children: const <Widget>[
                    Text('Reily'),
                    Text('level: 2'),
                  ],
                ),
              ],
            ),
          ),
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
                onTap: (){
                  ExtendedNavigator.of(context).push(Routes.test);
                }
              ),
              SSHomeCard(
                image: 'assets/images/quest_items.png',
                title: 'Quest Items',
                onTap: () {
                  ExtendedNavigator.of(context).push(Routes.test);
                }
              ),
              SSHomeCard(
                image: 'assets/images/characters_npcs.png',
                title: 'Characters/NPCs',
                onTap: () {
                  ExtendedNavigator.of(context).push(Routes.test);
                }
              ),
              SSHomeCard(
                image: 'assets/images/journal1.png',
                title: 'Journal',
                onTap: () {
                  ExtendedNavigator.of(context).push(Routes.test);
                }
              ),
            ],
          ),
        ),
      ],
    );
    // BlocBuilder<NoteWatcherBloc, NoteWatcherState>(
    //   builder: (context, state) {
    //     return state.map(initial: (_) => Container(),
    //      loadInProgress: (_) => const Center(child: CircularProgressIndicator()),
    //      loadSuccess: (state) {
    //        return ListView.builder(itemBuilder: (context, index) {
    //          final note = state.notes(index);

    //        },);
    //      },
    //      loadFailure: (_) => ,
    //     );
    //   },
    // );
  }
}
