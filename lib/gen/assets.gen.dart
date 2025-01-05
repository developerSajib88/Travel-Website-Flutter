/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsDestinationGen {
  const $AssetsDestinationGen();

  /// File path: assets/destination/destination_1.jpg
  AssetGenImage get destination1 =>
      const AssetGenImage('assets/destination/destination_1.jpg');

  /// File path: assets/destination/destination_2.png
  AssetGenImage get destination2 =>
      const AssetGenImage('assets/destination/destination_2.png');

  /// File path: assets/destination/destination_3.png
  AssetGenImage get destination3 =>
      const AssetGenImage('assets/destination/destination_3.png');

  /// List of all assets
  List<AssetGenImage> get values => [destination1, destination2, destination3];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/bag.png
  AssetGenImage get bag => const AssetGenImage('assets/icons/bag.png');

  /// File path: assets/icons/card.png
  AssetGenImage get card => const AssetGenImage('assets/icons/card.png');

  /// File path: assets/icons/choise.png
  AssetGenImage get choise => const AssetGenImage('assets/icons/choise.png');

  /// File path: assets/icons/flutter.png
  AssetGenImage get flutter => const AssetGenImage('assets/icons/flutter.png');

  /// File path: assets/icons/guide.png
  AssetGenImage get guide => const AssetGenImage('assets/icons/guide.png');

  /// File path: assets/icons/location.png
  AssetGenImage get location =>
      const AssetGenImage('assets/icons/location.png');

  /// File path: assets/icons/network.png
  AssetGenImage get network => const AssetGenImage('assets/icons/network.png');

  /// File path: assets/icons/play.png
  AssetGenImage get play => const AssetGenImage('assets/icons/play.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [bag, card, choise, flutter, guide, location, network, play];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/flutter.png
  AssetGenImage get flutter => const AssetGenImage('assets/images/flutter.png');

  /// File path: assets/images/preview_img.png
  AssetGenImage get previewImg =>
      const AssetGenImage('assets/images/preview_img.png');

  /// File path: assets/images/preview_img_2.png
  AssetGenImage get previewImg2 =>
      const AssetGenImage('assets/images/preview_img_2.png');

  /// File path: assets/images/preview_img_3.png
  AssetGenImage get previewImg3 =>
      const AssetGenImage('assets/images/preview_img_3.png');

  /// File path: assets/images/travel_ticket.png
  AssetGenImage get travelTicket =>
      const AssetGenImage('assets/images/travel_ticket.png');

  /// File path: assets/images/worldmap.png
  AssetGenImage get worldmap =>
      const AssetGenImage('assets/images/worldmap.png');

  /// File path: assets/images/worldmap1.png
  AssetGenImage get worldmap1 =>
      const AssetGenImage('assets/images/worldmap1.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        flutter,
        previewImg,
        previewImg2,
        previewImg3,
        travelTicket,
        worldmap,
        worldmap1
      ];
}

class $AssetsLogosGen {
  const $AssetsLogosGen();

  /// File path: assets/logos/airbnb.png
  AssetGenImage get airbnb => const AssetGenImage('assets/logos/airbnb.png');

  /// File path: assets/logos/booking.png
  AssetGenImage get booking => const AssetGenImage('assets/logos/booking.png');

  /// File path: assets/logos/expedia.png
  AssetGenImage get expedia => const AssetGenImage('assets/logos/expedia.png');

  /// File path: assets/logos/rbitz.png
  AssetGenImage get rbitz => const AssetGenImage('assets/logos/rbitz.png');

  /// File path: assets/logos/tripadvisor.png
  AssetGenImage get tripadvisor =>
      const AssetGenImage('assets/logos/tripadvisor.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [airbnb, booking, expedia, rbitz, tripadvisor];
}

class Assets {
  Assets._();

  static const $AssetsDestinationGen destination = $AssetsDestinationGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLogosGen logos = $AssetsLogosGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
