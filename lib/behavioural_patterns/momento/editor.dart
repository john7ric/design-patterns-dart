import 'package:design_patterns/behavioural_patterns/momento/history.dart';
import 'package:design_patterns/behavioural_patterns/momento/state.dart';

/// Originator equivalent to the Momento Pattern
///
/// Momento pattern is used to restore the previous state of an object
///

class Editor {
  /// History object manages the current and previous states of the Editor
  /// instance.s
  final History history = History();
  State get currentstate => history.currentContent;

  /// set the state recived as the [currentState]
  void set(String content) {
    history.addState(State(content));
  }

  /// reverts the current state to the previuos one
  void undo() {
    history.undoState();
  }

  /// prints the current content of the editor to the console
  /// and returns the content strig
  String currentContent() {
    return history.currentContent.content;
  }
}
