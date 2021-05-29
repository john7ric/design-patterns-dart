import 'package:design_patterns/state/tool.dart';

///class Equivalent to Concrete A in classoc State Pattern
///
///implements two required methods from the Tool abtract class

class Selection implements Tool {
  /// mouse down handler for Selection tool
  @override
  String mouseDown() {
    return 'Show Selection Image';
  }

  /// mouse up handler for Selection tool
  @override
  String mouseUp() {
    return 'draw dashed rectangle';
  }
}
