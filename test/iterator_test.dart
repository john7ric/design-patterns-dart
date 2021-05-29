import 'package:design_patterns/iterator/browser.dart';
import 'package:test/test.dart';

void main() {
  Browser browser;
  var urls = <String>[
    'url1',
    'url2',
    'url3',
    'url4',
  ];

  // Tests on the Browser class
  group('Iterator - Browser History', () {
    // sets up the editor with test data
    setUp(() {
      browser = Browser();
      for (var url in urls) {
        browser.browseUrl(url);
      }
    });
    test('Appended browser history is should match the test payload', () {
      final paylod = urls.join('');
      expect(browser.getHistoryString(), paylod);
    });
    tearDown(() {
      browser = null;
    });
  });
}
