import 'package:design_patterns/behavioural_patterns/strategy/image_compression/image_compression.dart';
import 'package:design_patterns/behavioural_patterns/strategy/image_filter.dart/image_filter.dart';

/// This class is responsible for storing image after
///
///
/// Performs an Image compression and apply a filter before storing image
/// Image compression perfomed by abstract class [ImageCompression]
/// Image filter is applied by by abstract class [ImageFilter]
///
/// This set up implements the Strategy pattern as the Algorithms for
/// compression and filter are perfomed by abstractions to avoid tight coupling
/// with concrete implementations.
///
class ImageStorage {
  /// List of Images stored
  List<String> images = [];

  /// Image compression algorithm
  ImageCompression imageCompression;

  /// Image filter algorith
  ImageFilter imageFilter;

  /// Applies filter and compresses given image before storing locally
  String storeImage(String image) {
    var processedImage = imageCompression.compress(image);
    processedImage = imageFilter.filter(processedImage);
    images.add(processedImage);
    return processedImage;
  }
}
