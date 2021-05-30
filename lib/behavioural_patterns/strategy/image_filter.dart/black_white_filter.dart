import 'package:design_patterns/behavioural_patterns/strategy/image_filter.dart/image_filter.dart';

/// Concrete implementation of Image Filter Class
///
/// Applies and returns Black and White filter to given image.
class BlackWhiteFilter implements ImageFilter {
  @override
  String filter(String image) {
    return image + ' applied black and white filter';
  }
}
