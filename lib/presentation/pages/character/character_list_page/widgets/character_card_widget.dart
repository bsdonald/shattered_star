import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:shattered_star/application/characters/character_actor/character_actor_bloc.dart';
import 'package:shattered_star/domain/character/character.dart';
import 'package:shattered_star/presentation/pages/character/character_list_page/widgets/slide_action_button.dart';
import 'package:shattered_star/presentation/pages/character/widgets/character_overview_card/character_overview_card.dart';
import 'package:shattered_star/presentation/routes/router.gr.dart';

class CharacterCard extends StatelessWidget {
  final Character character;

  const CharacterCard({
    Key key,
    required this.character,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final slidableController = SlidableController();
    bool confirmDelete;
    confirmDelete = false;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
      child: Slidable(
        controller: slidableController,
        actionPane: SlidableDrawerActionPane(),
        actionExtentRatio: 0.25,
        secondaryActions: <Widget>[
          SlideActionButton.left(
            color: Theme.of(context).primaryColor,
            caption: 'Edit',
            icon: Icons.edit,
            onTap: () {
              ExtendedNavigator.of(context).pushCharacterFormPage(editedCharacter: character);
            },
          ),
          SlideActionButton(
            caption: 'Edit Colors',
            color: Theme.of(context).accentColor,
            icon: Icons.colorize,
            onTap: () {
              ExtendedNavigator.of(context).pushCharacterColorPage(character: character);
            },
          ),
          SlideActionButton.right(
            color: Theme.of(context).errorColor,
            caption: 'Delete',
            icon: Icons.delete,
            onTap: () async {
              confirmDelete = await showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text('Are you sure?'),
                  content: Text('Do you really want to delete ${character.name.getOrCrash()}?'),
                  actions: <Widget>[
                    FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop(false);
                        // print(confirmDelete);
                      },
                      child: Text('No'),
                    ),
                    FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop(true);
                        // print(confirmDelete);
                      },
                      child: Text('Yes'),
                    ),
                  ],
                ),
              );
              print(confirmDelete);

              if (confirmDelete != true) {
              } else {
                context.read<CharacterActorBloc>().add(CharacterActorEvent.deleted(character));
                // deleteImage();
                await FlushbarHelper.createInformation(message: '${character.name.getOrCrash()} has been deleted').show(context);
              }
            },
          ),
        ],
        child: InkWell(
          onTap: () {
            ExtendedNavigator.of(context).pushHomePage(character: character);
          },
          onLongPress: () {
            ExtendedNavigator.of(context).pushCharacterFormPage(editedCharacter: character);
          },
          child: CharacterOverviewCard(character),
        ),
      ),
    );
  }
}
