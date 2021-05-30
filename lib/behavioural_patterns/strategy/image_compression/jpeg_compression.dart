import './image_compression.dart';

class PngCompresion implements ImageCompression {
  @override
  String compress(String image) {
    return image + ' compressed with PNG format';
  }
}
