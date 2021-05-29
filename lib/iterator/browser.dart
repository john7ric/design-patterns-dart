import 'package:design_patterns/iterator/browser_history.dart';

///This class is used to demostrate the Iterator pattern
///
///This implementation iterates through history of urls visited
///without a tight coupling on how the history data is stored

class Browser {
  final BrowserHistory browserHistory = BrowserHistory();

  String getHistoryString() {
    return browserHistory.appendedHistoryString();
  }

  void browseUrl(String url) {
    browserHistory.addHistory(url);
  }
}
