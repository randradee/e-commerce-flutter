import 'package:flutter/widgets.dart';
import 'package:store/utils/constants/sizes.dart';

class AppSpacingStyles {
  static const EdgeInsetsGeometry paddingWithAppBar = EdgeInsets.only(
    top: AppSizes.appBarHeight,
    left: AppSizes.defaultSpace,
    right: AppSizes.defaultSpace,
    bottom: AppSizes.defaultSpace,
  );
}
