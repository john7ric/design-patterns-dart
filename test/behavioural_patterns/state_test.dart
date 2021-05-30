import 'package:design_patterns/behavioural_patterns/state/tools/brush.dart';
import 'package:design_patterns/behavioural_patterns/state/tools/selection.dart';
import 'package:test/test.dart';
import 'package:design_patterns/behavioural_patterns/state/canvas.dart' as state;

void main() {
  state.Canvas canvas;

  // Tests on the Canvas class
  group('Pattern - tests on Brush implmentation', () {
    // sets up the canvas with Brush tool
    setUp(() {
      canvas = state.Canvas(Brush());
    });
    test('mouse down should show brush image', () {
      expect(canvas.mouseDown(), 'Show Brush Image');
    });

    test('mouse up should show  draw a line', () {
      expect(canvas.mouseUp(), 'Draw a line');
    });

    tearDown(() {
      canvas = null;
    });
  });

  group('Pattern - tests on Selection implmentation', () {
    // sets up the Canvas with Selction tool
    setUp(() {
      canvas = state.Canvas(Selection());
    });
    test('mouse down should show selection image', () {
      expect(canvas.mouseDown(), 'Show Selection Image');
    });
    test('mouse up should show  draw a dashed rectangle', () {
      expect(canvas.mouseUp(), 'draw dashed rectangle');
    });

    tearDown(() {
      canvas = null;
    });
  });
}
