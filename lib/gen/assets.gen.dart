/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsColorsGen {
  const $AssetsColorsGen();

  /// File path: assets/colors/colors.xml
  String get colors => 'assets/colors/colors.xml';

  /// List of all assets
  List<String> get values => [colors];
}

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/Cairo-Regular.ttf
  String get cairoRegular => 'assets/fonts/Cairo-Regular.ttf';

  /// File path: assets/fonts/DMSans-Regular.ttf
  String get dMSansRegular => 'assets/fonts/DMSans-Regular.ttf';

  /// File path: assets/fonts/Roboto-Regular.ttf
  String get robotoRegular => 'assets/fonts/Roboto-Regular.ttf';

  /// List of all assets
  List<String> get values => [cairoRegular, dMSansRegular, robotoRegular];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/back.png
  AssetGenImage get back => const AssetGenImage('assets/icons/back.png');

  /// File path: assets/icons/cart.png
  AssetGenImage get cart => const AssetGenImage('assets/icons/cart.png');

  /// File path: assets/icons/excel.png
  AssetGenImage get excel => const AssetGenImage('assets/icons/excel.png');

  /// File path: assets/icons/food_bar.png
  AssetGenImage get foodBar => const AssetGenImage('assets/icons/food_bar.png');

  /// File path: assets/icons/information.png
  AssetGenImage get information =>
      const AssetGenImage('assets/icons/information.png');

  /// File path: assets/icons/location.svg
  SvgGenImage get location => const SvgGenImage('assets/icons/location.svg');

  /// File path: assets/icons/meat.png
  AssetGenImage get meat => const AssetGenImage('assets/icons/meat.png');

  /// File path: assets/icons/nia.png
  AssetGenImage get nia => const AssetGenImage('assets/icons/nia.png');

  /// File path: assets/icons/setting.png
  AssetGenImage get setting => const AssetGenImage('assets/icons/setting.png');

  /// File path: assets/icons/table.png
  AssetGenImage get tablePng => const AssetGenImage('assets/icons/table.png');

  /// File path: assets/icons/table.svg
  SvgGenImage get tableSvg => const SvgGenImage('assets/icons/table.svg');

  /// List of all assets
  List<dynamic> get values => [
        back,
        cart,
        excel,
        foodBar,
        information,
        location,
        meat,
        nia,
        setting,
        tablePng,
        tableSvg
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/access_via_keyword.png
  AssetGenImage get accessViaKeyword =>
      const AssetGenImage('assets/images/access_via_keyword.png');

  /// File path: assets/images/demo_meet.png
  AssetGenImage get demoMeet =>
      const AssetGenImage('assets/images/demo_meet.png');

  /// File path: assets/images/device_linked.png
  AssetGenImage get deviceLinked =>
      const AssetGenImage('assets/images/device_linked.png');

  /// File path: assets/images/fish.png
  AssetGenImage get fish => const AssetGenImage('assets/images/fish.png');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/logo_splash_screen.png
  AssetGenImage get logoSplashScreen =>
      const AssetGenImage('assets/images/logo_splash_screen.png');

  /// File path: assets/images/logo_splash_screen_2.png
  AssetGenImage get logoSplashScreen2 =>
      const AssetGenImage('assets/images/logo_splash_screen_2.png');

  /// File path: assets/images/logo_splash_screen_bg.svg
  SvgGenImage get logoSplashScreenBg =>
      const SvgGenImage('assets/images/logo_splash_screen_bg.svg');

  /// File path: assets/images/meet.png
  AssetGenImage get meet => const AssetGenImage('assets/images/meet.png');

  /// File path: assets/images/msp.htm
  String get msp => 'assets/images/msp.htm';

  /// File path: assets/images/no_menu.png
  AssetGenImage get noMenu => const AssetGenImage('assets/images/no_menu.png');

  /// File path: assets/images/unvisible.svg
  SvgGenImage get unvisible => const SvgGenImage('assets/images/unvisible.svg');

  /// File path: assets/images/vector_splash_screen.svg
  SvgGenImage get vectorSplashScreen =>
      const SvgGenImage('assets/images/vector_splash_screen.svg');

  /// File path: assets/images/vegetarian.png
  AssetGenImage get vegetarian =>
      const AssetGenImage('assets/images/vegetarian.png');

  /// File path: assets/images/verify_digit.png
  AssetGenImage get verifyDigit =>
      const AssetGenImage('assets/images/verify_digit.png');

  /// File path: assets/images/visible.svg
  SvgGenImage get visible => const SvgGenImage('assets/images/visible.svg');

  /// List of all assets
  List<dynamic> get values => [
        accessViaKeyword,
        demoMeet,
        deviceLinked,
        fish,
        logo,
        logoSplashScreen,
        logoSplashScreen2,
        logoSplashScreenBg,
        meet,
        msp,
        noMenu,
        unvisible,
        vectorSplashScreen,
        vegetarian,
        verifyDigit,
        visible
      ];
}

class $AssetsLangGen {
  const $AssetsLangGen();

  /// File path: assets/lang/en-US.json
  String get enUS => 'assets/lang/en-US.json';

  /// File path: assets/lang/vi-VN.json
  String get viVN => 'assets/lang/vi-VN.json';

  /// File path: assets/lang/zh-CN.json
  String get zhCN => 'assets/lang/zh-CN.json';

  /// List of all assets
  List<String> get values => [enUS, viVN, zhCN];
}

class Assets {
  Assets._();

  static const $AssetsColorsGen colors = $AssetsColorsGen();
  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLangGen lang = $AssetsLangGen();
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
    bool gaplessPlayback = false,
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

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
