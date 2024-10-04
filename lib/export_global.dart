import 'export_global.dart';
export 'package:flutter/material.dart';
export 'package:manager_app/gen/colors.gen.dart';
export 'package:flutter_bloc/flutter_bloc.dart';
export 'package:auto_route/auto_route.dart';
export 'package:flutter_svg/flutter_svg.dart';
export 'package:manager_app/core/database/database_helper.dart';
export 'package:manager_app/gen/assets.gen.dart';
export 'package:easy_localization/src/easy_localization_app.dart';
export 'package:easy_localization/src/asset_loader.dart';
export 'package:easy_localization/src/public.dart';
export 'package:easy_localization/src/public_ext.dart';
export 'core/database/database_export.dart';

extension TextThemeHelper on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
}
