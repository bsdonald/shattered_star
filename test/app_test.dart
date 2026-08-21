import 'package:flutter_test/flutter_test.dart';
import 'package:shattered_star/main.dart';

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
}
