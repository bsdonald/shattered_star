import 'package:flutter/material.dart';


class NotesOverviewBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 10,
            shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    // padding: EdgeInsets.all(8),
                    child: Image.network(
                      'https://i.pinimg.com/originals/6b/98/17/6b9817699060e79bad580aa8648db2a7.jpg',
                      fit: BoxFit.contain,
                      height: 150,
                    ),
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
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            crossAxisCount: 2,
            // ignore: prefer_const_literals_to_create_immutables
            children: const <Widget>[
              Card(
                child:  Text('Inventory'),
              ),
              Card(
                child:  Text('Quest Items'),
              ),
              Card(
                child:  Text('Characters/NPCs'),
              ),
              Card(
                child:  Text('Equipment'),
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
