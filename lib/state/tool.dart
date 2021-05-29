/// Class equivalent to State  in Classic State pattern
///
/// contains two abtract methods
/// * [mouseUp()]
/// * [mouseDown()]
/// which the concrete classes must implement.

abstract class Tool {
  String mouseUp();
  String mouseDown();
}
