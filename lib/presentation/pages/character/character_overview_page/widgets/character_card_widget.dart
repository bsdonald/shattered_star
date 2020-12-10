import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:shattered_star/application/characters/character_actor/character_actor_bloc.dart';
import 'package:shattered_star/application/characters/character_form/character_form_bloc.dart';
import 'package:shattered_star/domain/character/character.dart';
import 'package:shattered_star/presentation/routes/router.gr.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CharacterCard extends StatelessWidget {
  final Character character;

  const CharacterCard({
    Key key,
    @required this.character,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SlidableController slidableController = SlidableController();
    bool confirmDelete = false;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
      child: Slidable(
        controller: slidableController,
        actionPane: SlidableDrawerActionPane(),
        actionExtentRatio: 0.25,
        secondaryActions: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                  )),
              child: IconSlideAction(
                caption: 'Edit',
                color: Theme.of(context).primaryColor.withOpacity(0),
                icon: Icons.edit,
                onTap: () {
                  ExtendedNavigator.of(context).pushCharacterFormPage(editedCharacter: character);
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).errorColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  )),
              child: IconSlideAction(
                caption: 'Delete',
                color: Theme.of(context).errorColor.withOpacity(0),
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
                    context.bloc<CharacterActorBloc>().add(CharacterActorEvent.deleted(character));
                    await FlushbarHelper.createInformation(message: '${character.name.getOrCrash()} has been deleted').show(context);
                  }
                },
              ),
            ),
          )
        ],
        child: InkWell(
          onTap: () {
            ExtendedNavigator.of(context).pushHomePage(character: character);
          },
          onLongPress: () {
            ExtendedNavigator.of(context).pushCharacterFormPage(editedCharacter: character);
          },
          child: Card(
            elevation: 10,
            child: Ink(
              decoration: BoxDecoration(
                // gradient: backgroundGradient,
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: character.imagePath.getOrCrash().isEmpty
                            ? Container()
                            : Image.network(
                                character.imagePath.getOrCrash(),
                                fit: BoxFit.scaleDown,
                                height: 175,
                              ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Align(
                      alignment: Alignment.center,
                      child: DefaultTextStyle(
                        style: TextStyle(
                          // backgroundColor: charDetailBackgroundColor,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                        child: Column(
                          children: <Widget>[
                            FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(character.name.getOrCrash()),
                            ),
                            SizedBox(height: 8),
                            FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                '${character.race.getOrCrash()} ${character.favoredClass.getOrCrash()}',
                                maxLines: 1,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text('level: ${character.level.getOrCrash()}'),
                            SizedBox(height: 8),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DefaultTextStyle(
                          style: TextStyle(
                            // color: statBlocTextColor,
                            fontWeight: FontWeight.bold,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text('${character.strength.getOrCrash()} STR'),
                              SizedBox(height: 8),
                              Text('${character.dexterity.getOrCrash()} DEX'),
                              SizedBox(height: 8),
                              Text('${character.constitution.getOrCrash()} CON'),
                              SizedBox(height: 8),
                              Text('${character.intelligence.getOrCrash()} INT'),
                              SizedBox(height: 8),
                              Text('${character.wisdom.getOrCrash()} WIS'),
                              SizedBox(height: 8),
                              Text('${character.charisma.getOrCrash()} CHA'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
