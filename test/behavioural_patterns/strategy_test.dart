import 'package:design_patterns/behavioural_patterns/strategy/image_compression/jpeg_compression.dart';
import 'package:design_patterns/behavioural_patterns/strategy/image_compression/png_compression.dart';
import 'package:design_patterns/behavioural_patterns/strategy/image_filter.dart/black_white_filter.dart';
import 'package:design_patterns/behavioural_patterns/strategy/image_filter.dart/high_contrast_filter.dart';
import 'package:test/test.dart';
import 'package:design_patterns/behavioural_patterns/strategy/image_storage.dart';

void main() {
  ImageStorage imageStorage;

  // Tests on the Canvas class
  group('Strategy - Tests for Image Storage ', () {
    // sets up the Image Store
    setUp(() {
      imageStorage = ImageStorage();
    });
    test('With JPEG compression and Black&white filter', () {
      imageStorage.imageCompression = JpegCompresion();
      imageStorage.imageFilter = BlackWhiteFilter();
      imageStorage.storeImage('image1');
      expect(imageStorage.images[0], 'image1 compressed with JPEG format applied black and white filter');
    });
    test('With JPEG compression and high contrasr filter', () {
      imageStorage.imageCompression = JpegCompresion();
      imageStorage.imageFilter = HighContrastFilter();
      imageStorage.storeImage('image1');
      expect(imageStorage.images[0], 'image1 compressed with JPEG format applied high contrast filter');
    });
    test('With PNG compression and Black&white filter', () {
      imageStorage.imageCompression = PngCompresion();
      imageStorage.imageFilter = BlackWhiteFilter();
      imageStorage.storeImage('image1');
      expect(imageStorage.images[0], 'image1 compressed with PNG format applied black and white filter');
    });
    test('With PNG compression and High Contrast filter', () {
      imageStorage.imageCompression = PngCompresion();
      imageStorage.imageFilter = HighContrastFilter();
      imageStorage.storeImage('image1');
      expect(imageStorage.images[0], 'image1 compressed with PNG format applied high contrast filter');
    });
    tearDown(() {
      imageStorage = null;
    });
  });
}
