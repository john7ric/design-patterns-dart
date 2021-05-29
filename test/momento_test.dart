import 'package:design_patterns/momento/editor.dart';
import 'package:test/test.dart';

void main() {
  Editor editor;

  // Tests on the Editor class
  group('Momento - tests on Editor', () {
    // sets up the editor with test data
    setUp(() {
      editor = Editor();
      editor.set('first');
      editor.set('second');
    });
    test('set content', () {
      final newContent = 'new content';
      editor.set(newContent);
      expect(editor.currentContent(), newContent);
    });
    test('Undo content', () {
      editor.undo();
      expect(editor.currentContent(), 'first');
    });

    test('Undo morre time than history data - shows initial data. ', () {
      for (var i = 0; i < 5; i++) {
        editor.undo();
      }
      editor.undo();
      expect(editor.currentContent(), 'Initial State');
    });

    tearDown(() {
      editor = null;
    });
  });
}
