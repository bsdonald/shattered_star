import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shattered_star/main.dart';
import 'package:shattered_star/character/widgets/character_card.dart';

void main() {
  testWidgets('demo mode presents the login entry point', (tester) async {
    await tester.pumpWidget(const ShatteredStarApp(firebaseReady: false));

    expect(find.text('SHATTERED STAR'), findsOneWidget);
    expect(find.text('Enter demo dashboard'), findsOneWidget);
  });

  testWidgets('demo login opens the dashboard', (tester) async {
    await tester.pumpWidget(const ShatteredStarApp(firebaseReady: false));
    await tester.tap(find.text('Enter demo dashboard'));
    await tester.pumpAndSettle();

    expect(find.text('Your campaigns'), findsOneWidget);
    expect(find.text('Your characters'), findsOneWidget);
  });

  testWidgets('new character tile opens a blank character card',
      (tester) async {
    await tester.pumpWidget(const ShatteredStarApp(firebaseReady: false));
    await tester.tap(find.text('Enter demo dashboard'));
    await tester.pumpAndSettle();

    await tester.drag(find.byType(ListView).last, const Offset(0, -500));
    await tester.pumpAndSettle();
    await tester.tap(find.text('New Character'));
    await tester.pumpAndSettle();

    expect(find.byType(CharacterCard), findsOneWidget);
    expect(find.byType(TextField), findsNWidgets(24));
    expect(find.byType(TextFormField), findsNWidgets(23));
    expect(find.text('Cancel'), findsOneWidget);
    expect(find.text('Save'), findsOneWidget);

    await tester.tap(find.text('Cancel'));
    await tester.pumpAndSettle();
    expect(find.text('Your characters'), findsOneWidget);
  });

  testWidgets('character name can be saved and cancelled', (tester) async {
    await tester.pumpWidget(const ShatteredStarApp(firebaseReady: false));
    await tester.tap(find.text('Enter demo dashboard'));
    await tester.pumpAndSettle();

    await tester.drag(find.byType(ListView).last, const Offset(0, -500));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Dragonarkon'));
    await tester.pumpAndSettle();

    await tester.tap(find.byTooltip('Edit name'));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), 'Dragonborn');
    await tester.tap(find.text('Save'));
    await tester.pumpAndSettle();
    expect(find.text('Dragonborn'), findsOneWidget);

    await tester.tap(find.byTooltip('Edit name'));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), 'Discarded Name');
    await tester.tap(find.text('Cancel'));
    await tester.pumpAndSettle();
    expect(find.text('Dragonborn'), findsOneWidget);
    expect(find.text('Discarded Name'), findsNothing);
  });

  testWidgets('basic info can be saved and cancelled', (tester) async {
    await tester.pumpWidget(const ShatteredStarApp(firebaseReady: false));
    await tester.tap(find.text('Enter demo dashboard'));
    await tester.pumpAndSettle();

    await tester.drag(find.byType(ListView).last, const Offset(0, -500));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Dragonarkon'));
    await tester.pumpAndSettle();

    await tester.tap(find.byTooltip('Edit basic info'));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextFormField).first, 'Elf');
    await tester.tap(find.text('Save'));
    await tester.pumpAndSettle();
    expect(find.text('Elf'), findsOneWidget);

    await tester.tap(find.byTooltip('Edit basic info'));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextFormField).first, 'Discarded Race');
    await tester.tap(find.text('Cancel'));
    await tester.pumpAndSettle();
    expect(find.text('Elf'), findsOneWidget);
    expect(find.text('Discarded Race'), findsNothing);
  });

  testWidgets('stats can be saved and cancelled', (tester) async {
    await tester.pumpWidget(const ShatteredStarApp(firebaseReady: false));
    await tester.tap(find.text('Enter demo dashboard'));
    await tester.pumpAndSettle();

    await tester.drag(find.byType(ListView).last, const Offset(0, -500));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Dragonarkon'));
    await tester.pumpAndSettle();

    await tester.drag(find.byType(ListView).last, const Offset(0, -500));
    await tester.pumpAndSettle();
    await tester.tap(find.byTooltip('Edit stats'));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextFormField).first, '18');
    await tester.tap(find.text('Save'));
    await tester.pumpAndSettle();
    expect(find.text('STR: 18'), findsOneWidget);

    await tester.tap(find.byTooltip('Edit stats'));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextFormField).first, 'Discarded');
    await tester.tap(find.text('Cancel'));
    await tester.pumpAndSettle();
    expect(find.text('STR: 18'), findsOneWidget);
    expect(find.text('STR: Discarded'), findsNothing);
  });
}
