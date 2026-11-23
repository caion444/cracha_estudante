import 'package:flutter_test/flutter_test.dart';
import 'package:cracha_estudante/main.dart';

void main() {
  testWidgets('Renderiza lista de crachas estudantis', (WidgetTester tester) async {
    await tester.pumpWidget(const MeuAppCracha());
    expect(find.text('Crachás Estudantis - Lista'), findsOneWidget);
    expect(find.text('Caio Silva'), findsOneWidget);
  });
}
