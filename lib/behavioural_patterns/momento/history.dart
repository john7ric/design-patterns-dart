import 'package:design_patterns/behavioural_patterns/momento/state.dart';

/// Caretaker equivalent to the Momento Pattern
///
/// Manages the states by appending and removing
/// State objects to List to provide Editor class
/// with relevant state
///

class History {
  /// stores the states of editor
  final List<State> _states = [State('Initial State')];

  /// getter for current state for editor
  State get currentContent => _states.last;

  /// adds a new state to the History
  void addState(State state) {
    _states.add(state);
  }

  /// Removes the current state
  void undoState() {
    // removes the current state only if its not Initial state
    if (_states.length > 1) {
      _states.removeLast();
    }
  }
}
