import 'package:flutter_test/flutter_test.dart';
import 'package:task_one/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('SetupBusinessAccountScreenViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
