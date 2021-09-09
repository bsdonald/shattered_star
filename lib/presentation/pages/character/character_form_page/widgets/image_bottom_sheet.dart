// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:shattered_star/application/characters/character_form/character_form_bloc.dart';

// class ImageBottomSheet extends StatelessWidget {
//   const ImageBottomSheet({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(32),
//       decoration: BoxDecoration(
//         color: Colors.amber,
//         borderRadius: BorderRadius.only(
//           topRight: Radius.circular(30),
//           topLeft: Radius.circular(30),
//         ),
//       ),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Text('Select an image for your character'),
//           SizedBox(
//             height: 32,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: <Widget>[
//               RaisedButton(
//                 onPressed: () {},
//                 child: Container(
//                   width: MediaQuery.of(context).size.width * .3,
//                   child: Center(
//                     child: Text('From Saved Photos'),
//                   ),
//                 ),
//               ),
//               RaisedButton(
//                 onPressed: () {
//                   context.bloc<CharacterFormBloc>().add(CharacterFormEvent.imageButtonPressed());
//                   Navigator.of(context).pop();
//                 },
//                 child: Container(
//                   width: MediaQuery.of(context).size.width * .3,
//                   child: Center(
//                     child: Text('Upload New Photo'),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
