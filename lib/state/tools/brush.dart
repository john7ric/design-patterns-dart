import 'package:design_patterns/state/tool.dart';

///class Equivalent to Concrete B in classoc State Pattern
///
///implements two required methods from the abtract class [Tool]

class Brush implements Tool {
  /// mouse down handler for Brush tool
  @override
  String mouseDown() {
    return 'Show Brush Image';
  }

  /// mouse up handler for Brush tool
  @override
  String mouseUp() {
    return 'Draw a line';
  }
}
