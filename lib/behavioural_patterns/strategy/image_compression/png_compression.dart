import 'package:design_patterns/behavioural_patterns/strategy/image_compression/image_compression.dart';

class JpegCompresion implements ImageCompression {
  @override
  String compress(String image) {
    return image + ' compressed with JPEG format';
  }
}
