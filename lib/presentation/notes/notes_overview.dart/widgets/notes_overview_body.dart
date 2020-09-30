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
            // color: Colors.white,
            child: Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    'https://i.pinimg.com/originals/6b/98/17/6b9817699060e79bad580aa8648db2a7.jpg',
                    fit: BoxFit.contain,
                    height: 150,
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
              SSHomeCard(
                image: 'assets/images/inventory.png',
                title: 'Inventory',
              ),
              SSHomeCard(
                image: 'assets/images/inventory.png',
                title: 'Quest Items',
              ),
              SSHomeCard(
                image: 'assets/images/inventory.png',
                title: 'Characters/NPCs',
              ),
              SSHomeCard(
                image: 'assets/images/inventory.png',
                title: 'Equipment',
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

class SSHomeCard extends StatelessWidget {
  final String title;
  final String image;

  const SSHomeCard({
    @required this.title,
    @required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: GridTile(
          footer: GridTileBar(
            backgroundColor: Theme.of(context).accentColor.withOpacity(0.5),
            title: Text(
              title,
              textAlign: TextAlign.center,
            ),
          ),
          child: Image.asset(image, fit: BoxFit.contain),
        ),
      ),
    );
  }
}
