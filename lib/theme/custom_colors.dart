import 'package:flutter/material.dart';

class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors({
    this.success,
    this.info,
    this.warning,
    this.error,
  });

  final Color? success;
  final Color? info;
  final Color? warning;
  final Color? error;

  static const light = CustomColors(
    success: Color(0xff28a745),
    info: Color(0xff17a2b8),
    warning: Color(0xffffc107),
    error: Color(0xffdc3545),
  );

  static const dark = CustomColors(
    success: Color(0xff00bc8c),
    info: Color(0xff17a2b8),
    warning: Color(0xfff39c12),
    error: Color(0xffe74c3c),
  );

  @override
  ThemeExtension<CustomColors> copyWith({
    Color? success,
    Color? info,
    Color? warning,
    Color? error,
  }) =>
      CustomColors(
        success: success ?? this.success,
        info: info ?? this.info,
        warning: warning ?? this.warning,
        error: success ?? this.error,
      );

  @override
  ThemeExtension<CustomColors> lerp(
    ThemeExtension<CustomColors>? other,
    double t,
  ) =>
      (other is! CustomColors)
          ? this
          : CustomColors(
              success: Color.lerp(success, other.success, t),
              info: Color.lerp(info, other.info, t),
              warning: Color.lerp(warning, other.warning, t),
              error: Color.lerp(error, other.error, t),
            );
}
