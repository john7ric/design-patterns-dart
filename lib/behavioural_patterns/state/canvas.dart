import 'package:design_patterns/behavioural_patterns/state/tool.dart';

/// Class equivalent to Context in classic State pattern
///
///
/// * [tool] should confirm to Abtract class [tool]
/// * two instance  methods mouseUp & mouseDown
/// * Implementations of the two instance methods will vary
/// depending on the concrete implementation of [tool]
///

class Canvas {
  /// [tool] instace
  final Tool tool;

  Canvas(this.tool);

  /// Action when mouse up gesture on canvas
  String mouseUp() {
    return tool.mouseUp();
  }

  /// Action when mouse up gesture on canvas
  String mouseDown() {
    return tool.mouseDown();
  }
}
