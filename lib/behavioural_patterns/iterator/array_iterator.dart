import 'package:design_patterns/behavioural_patterns/iterator/history_iterator.dart';

/// Concrete implementation of Historyiterator
///
/// This class is capable of iterating over a list of Strings

class ArrayIterator implements HistoryIterator<String> {
  /// history of urls
  final List<String> history;

  /// current index of url
  int index = 0;

  /// constructor
  ArrayIterator(this.history);

  /// fetchs the url at [index]
  @override
  String currentItem() {
    if (history.isNotEmpty) {
      return history[index];
    }
    return 'No history found !';
  }

  /// returns if there is a next item after [index]
  @override
  bool hasNext() {
    return history.length > index;
  }

  /// increments the [index] by 1
  @override
  void next() {
    index++;
  }
}
