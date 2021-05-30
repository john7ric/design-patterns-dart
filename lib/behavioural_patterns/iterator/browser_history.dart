import 'package:design_patterns/behavioural_patterns/iterator/array_iterator.dart';
import 'package:design_patterns/behavioural_patterns/iterator/history_iterator.dart';

/// This class manges browser history
///
/// Uses Iterator abstraction so that if the datastructure
/// which holds the history is changed then implementation can be
/// adapted by adding a concrete impelementation of [HistoryIterator]
///
class BrowserHistory {
  /// Iterator instance manages the iteration of history
  HistoryIterator iterator;

  /// Constructor
  BrowserHistory();

  /// List of Strings  stores  urls browsed
  List<String> history = [];

  /// adds the [url] parameter to list of urls in history
  void addHistory(String url) {
    history.add(url);
  }

  /// get the history urls appended to a singlle url
  ///
  /// This is a made up use case to perform iteration
  /// makes no sense in real world scenario ;)
  String appendedHistoryString() {
    iterator = ArrayIterator(history);

    var resultString = '';

    while (iterator.hasNext()) {
      resultString += iterator.currentItem();
      iterator.next();
    }
    return resultString;
  }
}
