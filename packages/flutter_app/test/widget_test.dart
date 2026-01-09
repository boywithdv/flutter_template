import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/main.dart';
import 'package:flutter_template/utils/providers/shared_preferences_provider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    // Set up SharedPreferences with empty values before each test
    SharedPreferences.setMockInitialValues({});
  });

  /// Helper function to create a ProviderScope with necessary overrides
  Future<ProviderScope> createApp() async {
    final sharedPreferences = await SharedPreferences.getInstance();

    return ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(sharedPreferences),
      ],
      child: const MyApp(),
    );
  }

  testWidgets('CounterPage displays initial counter value',
      (WidgetTester tester) async {
    await tester.pumpWidget(await createApp());
    await tester.pumpAndSettle();

    // Verify that initial counter value is 0
    expect(find.text('0'), findsOneWidget);
    expect(find.text('You have pushed the button this many times:'),
        findsOneWidget);
  });

  testWidgets('Counter increments when increment button is tapped',
      (WidgetTester tester) async {
    await tester.pumpWidget(await createApp());
    await tester.pumpAndSettle();

    // Verify initial value
    expect(find.text('0'), findsOneWidget);

    // Tap the increment button
    await tester.tap(find.byIcon(Icons.add));
    await tester.pumpAndSettle();

    // Verify counter has incremented
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);

    // Tap increment button again
    await tester.tap(find.byIcon(Icons.add));
    await tester.pumpAndSettle();

    // Verify counter is now 2
    expect(find.text('1'), findsNothing);
    expect(find.text('2'), findsOneWidget);
  });

  testWidgets('Counter decrements when decrement button is tapped',
      (WidgetTester tester) async {
    await tester.pumpWidget(await createApp());
    await tester.pumpAndSettle();

    // First increment to 2
    await tester.tap(find.byIcon(Icons.add));
    await tester.pumpAndSettle();
    await tester.tap(find.byIcon(Icons.add));
    await tester.pumpAndSettle();
    expect(find.text('2'), findsOneWidget);

    // Then decrement to 1
    await tester.tap(find.byIcon(Icons.remove));
    await tester.pumpAndSettle();
    expect(find.text('1'), findsOneWidget);

    // Decrement again to 0
    await tester.tap(find.byIcon(Icons.remove));
    await tester.pumpAndSettle();
    expect(find.text('0'), findsOneWidget);
  });

  testWidgets('Counter resets when reset button is tapped',
      (WidgetTester tester) async {
    await tester.pumpWidget(await createApp());
    await tester.pumpAndSettle();

    // Increment counter to 5
    for (int i = 0; i < 5; i++) {
      await tester.tap(find.byIcon(Icons.add));
      await tester.pumpAndSettle();
    }
    expect(find.text('5'), findsOneWidget);

    // Tap reset button (refresh icon with red background)
    final resetButton = find.byWidgetPredicate(
      (widget) =>
          widget is FloatingActionButton &&
          widget.backgroundColor == Colors.red &&
          widget.child is Icon &&
          (widget.child as Icon).icon == Icons.refresh,
    );
    await tester.tap(resetButton);
    await tester.pumpAndSettle();

    // Verify counter is reset to 0
    expect(find.text('0'), findsOneWidget);
    expect(find.text('5'), findsNothing);
  });

  testWidgets('Counter refreshes when refresh button in AppBar is tapped',
      (WidgetTester tester) async {
    await tester.pumpWidget(await createApp());
    await tester.pumpAndSettle();

    // Increment counter to 3
    for (int i = 0; i < 3; i++) {
      await tester.tap(find.byIcon(Icons.add));
      await tester.pumpAndSettle();
    }
    expect(find.text('3'), findsOneWidget);

    // Tap refresh button in AppBar
    final refreshButtons = find.byIcon(Icons.refresh);
    expect(refreshButtons, findsNWidgets(2)); // AppBar and controls

    // Find the one in the AppBar by checking ancestors
    final appBarRefresh = find.ancestor(
      of: find.byIcon(Icons.refresh),
      matching: find.byType(AppBar),
    );
    await tester.tap(appBarRefresh.first);
    await tester.pumpAndSettle();

    // Value should still be 3 after refresh (it just re-fetches from data source)
    expect(find.text('3'), findsOneWidget);
  });

  testWidgets('CounterPage has all control buttons',
      (WidgetTester tester) async {
    await tester.pumpWidget(await createApp());
    await tester.pumpAndSettle();

    // Verify all buttons exist
    expect(find.byIcon(Icons.add), findsOneWidget);
    expect(find.byIcon(Icons.remove), findsOneWidget);
    expect(find.byIcon(Icons.refresh), findsNWidgets(2)); // AppBar and controls
    expect(find.byIcon(Icons.sync), findsOneWidget);
  });

  testWidgets('CounterPage shows app title and correct text',
      (WidgetTester tester) async {
    await tester.pumpWidget(await createApp());
    await tester.pumpAndSettle();

    // Verify app bar title
    expect(find.text('Riverpod Counter Example'), findsOneWidget);

    // Verify instruction text
    expect(find.text('You have pushed the button this many times:'),
        findsOneWidget);
  });
}
