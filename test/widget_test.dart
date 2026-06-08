import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:praktikum_widget_dasar/main.dart';

void main() {
  testWidgets('Profil page smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const PraktikumApp());

    // Verify that our profile name is displayed.
    expect(find.text('Halo, Saya Alief Albayu'), findsOneWidget);
    expect(find.text('Mahasiswa Pemrograman Mobile'), findsOneWidget);

    // Verify buttons exist
    expect(find.byType(ElevatedButton), findsAtLeastNWidgets(1));
  });
}
