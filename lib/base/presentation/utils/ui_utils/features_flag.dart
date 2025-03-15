// ignore_for_file: constant_identifier_names

import 'dart:io';

enum Features {
  Chat,
  isMessageRead,
  UserActivites,
  Firebase,
  Map,
  PinningSecurity,
  VideoMessage,
  AudioMessage,
  DistrictMap,
  BiometricSignIn,
  AppleSignIn;
}

abstract class FeaturesFlags {
  static final List<Features> features = [];

  /// functions
  static bool hasFeature(Features feature) => features.contains(feature);

  static bool hasFeatures(List<Features> features) =>
      features.every((it) => hasFeature(it));

  static void init() {
    //TODO implement this for multi env
    // switch (flavorSettings.flavorType) {
    // case FlavorType.dev:
    // features.addAll(
    //     [Features.Chat, Features.Firebase, Features.PinningSecurity]);
    //   break;
    // case FlavorType.staging:
    //   features.addAll([
    //     Features.Chat,
    //     Features.Firebase,
    //     Features.BiometricSignIn,
    //   ]);
    //   break;
    // case FlavorType.prod:
    //   features.addAll([
    //     Features.Chat,
    //     Features.Firebase,
    //     Features.BiometricSignIn,
    //   ]);
    //   break;
    // }
    features
        .addAll([Features.Chat, Features.Firebase, Features.PinningSecurity]);
    if (Platform.isIOS) {
      features.add(Features.AppleSignIn);
    }
  }
}
