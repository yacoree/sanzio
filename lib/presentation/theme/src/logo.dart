import 'package:flutter/material.dart';

import '../theme.dart';

class Logo extends ThemeExtension<Logo> {
  final String logoPath;

  Logo({required this.logoPath});

  @override
  ThemeExtension<Logo> copyWith({String? logoPath}) {
    return Logo(
      logoPath: logoPath ?? this.logoPath,
    );
  }

  @override
  ThemeExtension<Logo> lerp(covariant ThemeExtension<Logo>? other, double t) {
    if (other is! ThemeColors) {
      return this;
    }

    return this;
  }

  static get light => Logo(logoPath: logoLight);

  static get dark => Logo(logoPath: logoDark);
}
