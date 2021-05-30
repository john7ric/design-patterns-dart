import './image_filter.dart';

/// Concrete implementation of Image Filter Class
///
/// Applies and returns Black and White filter to given image.
class HighContrastFilter implements ImageFilter {
  @override
  String filter(String image) {
    return image + ' applied high contrast filter';
  }
}
