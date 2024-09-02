import 'size_config.dart';

/// Extension to use values using [num]
extension SizeExt on num {
  /// [getter] to get [responsive height] according to device height
  double get h {
    final percentage = (this * 100) / 812;
    return SizeConfig.height / 100 * percentage;
  }

  /// [getter] to get [responsive width] according to device width
  double get w {
    final percentage = (this * 100) / 375;
    return SizeConfig.width / 100 * percentage;
  }

  double get radius => SizeConfig.width / 100 * this;

  /// [getter] to get responsive [sp] (scaled pixels) for font sizes, depending on device width
  double get sp {
    // Define a base width for comparison
    const double baseWidth = 375;

    // Calculate the scaling factor based on the device's screen width
    double scaleFactor = SizeConfig.width / baseWidth;

    // Multiply the original value by the scaling factor and round to the nearest double
    return (this * scaleFactor).roundToDouble();
  }
}
