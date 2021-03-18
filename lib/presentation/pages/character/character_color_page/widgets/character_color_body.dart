import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:shattered_star/domain/character/character.dart';
import 'package:shattered_star/presentation/pages/character/widgets/character_overview_card/character_overview_card.dart';

const Color _kBackgroundColor = Color(0xffa0a0a0);
const Color _kPlaceholderColor = Color(0x80404040);

class CharacterColorBody extends StatefulWidget {
  final Character character;
  const CharacterColorBody({Key key, @required this.character}) : super(key: key);

  @override
  _CharacterColorBodyState createState() => _CharacterColorBodyState();
}

class _CharacterColorBodyState extends State<CharacterColorBody> {
  PaletteGenerator paletteGenerator;

  @override
  Widget build(BuildContext context) {
    var statBlocTextColor = Colors.white;

    var myGradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Theme.of(context).scaffoldBackgroundColor,
        Theme.of(context).primaryColor,
        Theme.of(context).cardColor,
      ],
    );

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CharacterOverviewCard(
            character: widget.character,
            backgroundGradient: myGradient,
            statBlocTextColor: statBlocTextColor,
          ),
        ),
        RaisedButton(
          child: Text('Generate Palette'),
          color: Colors.lightBlue,
          onPressed: generatePalette,
        ),
        PaletteSwatches(
          generator: paletteGenerator,
          character: widget.character,
        ),
      ],
    );
  }

  generatePalette() async {
    await PaletteGenerator.fromImageProvider(
      Image.network(widget.character.imagePath.getOrCrash()).image,
      maximumColorCount: 50,
    );
    setState(() {});
  }
}

class PaletteSwatches extends StatelessWidget {
  /// Create a Palette swatch.
  ///
  /// The [generator] is optional. If it is null, then the display will
  /// just be an empty container.
  const PaletteSwatches({Key key, this.generator, this.character}) : super(key: key);

  /// The [PaletteGenerator] that contains all of the swatches that we're going
  /// to display.
  final PaletteGenerator generator;
  final Character character;

  @override
  Widget build(BuildContext context) {
    final List<Widget> swatches = <Widget>[];
    if (generator == null || generator.colors.isEmpty) {
      return Container();
    }
    for (Color color in generator.colors) {
      swatches.add(PaletteSwatch(color: color));
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Wrap(
          children: swatches,
        ),
        Container(height: 30.0),
        PaletteSwatch(label: 'Color 1', color: character.primaryGradientColor.getOrCrash()),
        PaletteSwatch(label: 'Color 2', color: character.secondaryGradientColor.getOrCrash()),
        PaletteSwatch(label: 'Color 3', color: character.tertiaryGradientColor.getOrCrash()),
        PaletteSwatch(label: 'Text Color 1', color: character.primaryTextColor.getOrCrash()),
        PaletteSwatch(label: 'Text Color 2', color: character.secondaryTextColor.getOrCrash()),
      ],
    );
  }
}

@immutable
class PaletteSwatch extends StatelessWidget {
  /// Creates a PaletteSwatch.
  ///
  /// If the [color] argument is omitted, then the swatch will show a
  /// placeholder instead, to indicate that there is no color.
  const PaletteSwatch({
    Key key,
    this.color,
    this.label,
  }) : super(key: key);

  /// The color of the swatch. May be null.
  final Color color;

  /// The optional label to display next to the swatch.
  final String label;

  @override
  Widget build(BuildContext context) {
    // Compute the "distance" of the color swatch and the background color
    // so that we can put a border around those color swatches that are too
    // close to the background's saturation and lightness. We ignore hue for
    // the comparison.
    final HSLColor hslColor = HSLColor.fromColor(color ?? Colors.transparent);
    final HSLColor backgroundAsHsl = HSLColor.fromColor(_kBackgroundColor);
    final double colorDistance = math.sqrt(math.pow(hslColor.saturation - backgroundAsHsl.saturation, 2.0) + math.pow(hslColor.lightness - backgroundAsHsl.lightness, 2.0));

    Widget swatch = Padding(
      padding: const EdgeInsets.all(2.0),
      child: color == null
          ? const Placeholder(
              fallbackWidth: 34.0,
              fallbackHeight: 20.0,
              color: Color(0xff404040),
              strokeWidth: 2.0,
            )
          : Container(
              decoration: BoxDecoration(
                  color: color,
                  border: Border.all(
                    width: 1.0,
                    color: _kPlaceholderColor,
                    style: colorDistance < 0.2 ? BorderStyle.solid : BorderStyle.none,
                  )),
              width: 34.0,
              height: 20.0,
            ),
    );

    if (label != null) {
      swatch = ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 130.0, minWidth: 130.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            swatch,
            Container(width: 5.0),
            Text(label),
          ],
        ),
      );
    }
    return swatch;
  }
}
