import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:space_traders/api/actions_repository.dart';
import 'package:space_traders/blocs/home/home_cubit.dart';
import 'package:space_traders/main.dart';
import 'package:space_traders/methods/duration.dart';
import 'package:space_traders/methods/random.dart';
import 'package:space_traders/methods/widget_keys.dart';
import 'package:space_traders/models/agent.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group(
    'Ship actions',
    () {
      // testWidgets('Register', (tester) async {
      //   await tester.pumpWidget(const MainApp());
      //   await tester.tap(find.byKey(WidgetKeys.registerButton));
      //   await tester.pumpAndSettle();

      //   expect(find.text('Register'), findsAtLeast(2));

      //   await tester.enterText(
      //       find.byKey(WidgetKeys.nameField), getRandomString(10));

      //   await tester.tap(find.byKey(WidgetKeys.completeRegisterButton));
      //   await tester.pumpAndSettle();
      // });

      testWidgets(
        'Navigate ship',
        (tester) async {
          // Load app widget
          await tester.pumpWidget(const MainApp());

          HomeCubit cubit = HomeCubit();
          cubit.setAgent(const Agent(
              accountId: 'Test',
              symbol: 'Test',
              headquarters: 'Test',
              credits: 10000,
              startingFaction: 'Cosmic',
              shipCount: 1));
          // press on my ships to go to fleet
          final myShipsButton = find.byKey(WidgetKeys.myShips);
          await tester.tap(myShipsButton);

          // wait for all frames are done
          await tester.pumpAndSettle();

          expect(find.text('My Ships'), findsOneWidget);
        },
      );
    },
  );
}
