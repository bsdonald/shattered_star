import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

//ignore: must_be_immutable
class SlideActionButton extends StatelessWidget {
  final Color color;
  final String caption;
  final IconData icon;
  final void Function() onTap;
  BorderRadiusGeometry borderRadius;

  SlideActionButton({
    Key key,
    @required this.color,
    @required this.caption,
    @required this.icon,
    @required this.onTap,
  }) : super(key: key);

  SlideActionButton.left({
    @required this.color,
    @required this.caption,
    @required this.icon,
    @required this.onTap,
  }) : borderRadius = BorderRadius.only(
          topLeft: Radius.circular(8),
          bottomLeft: Radius.circular(8),
        );

  SlideActionButton.right({
    @required this.color,
    @required this.caption,
    @required this.icon,
    @required this.onTap,
  }) : borderRadius = BorderRadius.only(
          topRight: Radius.circular(8),
          bottomRight: Radius.circular(8),
        );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: borderRadius,
        ),
        child: IconSlideAction(
          caption: caption,
          color: color.withOpacity(0),
          icon: icon,
          onTap: onTap,
        ),
      ),
    );
  }
}
