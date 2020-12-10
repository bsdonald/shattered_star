import 'package:firestore_ui/animated_firestore_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shattered_star/application/characters/character_actor/character_actor_bloc.dart';
import 'package:shattered_star/application/characters/character_watcher/character_watcher_bloc.dart';
import 'package:shattered_star/presentation/pages/character/character_overview_page/widgets/character_card_widget.dart';
import 'package:shattered_star/presentation/pages/character/character_overview_page/widgets/critical_failure_display.dart';

class CharacterOverviewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharacterWatcherBloc, CharacterWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => const Center(child: CircularProgressIndicator()),
          loadSuccess: (state) {
            print('size ${state.characters.size}');
            return FirestoreAnimatedList(
              query: null,
              itemBuilder: (context, snapshot, animation, index) {
                final character = state.characters[index];
                if (character.failureOption.isSome()) {
                  return Container(
                    color: Colors.red,
                    height: 100,
                    width: 100,
                  );
                } else {
                  return CharacterCard(character: character);
                }
              },
              // itemCount: state.characters.size,
            );
          },
          loadFailure: (state) {
            return CriticalFailureDisplay(
              failure: state.characterFailure,
            );
          },
        );
      },
    );
  }
}
