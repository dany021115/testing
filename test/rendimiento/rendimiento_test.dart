import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

import '../../windows/flutter/ephemeral/.plugin_symlinks/network_info_plus/example/lib/main.dart';

void main() {
  testWidgets('Rendimiento de la pantalla de inicio', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    final Stopwatch stopwatch = Stopwatch()..start();
    await tester.drag (find.byType(Scrollable), const Offset(0, -300));
    await tester.pump();
    stopwatch.stop();
    print('Tiempo Transcurrido: ${stopwatch.elapsedMilliseconds}ms');
    expect(stopwatch.elapsedMilliseconds, lessThan(1000));

  });
}