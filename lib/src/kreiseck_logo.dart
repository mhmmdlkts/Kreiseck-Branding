import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const String _package = 'kreiseck_branding';
const String _asset = 'assets/kreiseck_logo.svg';

/// Das Kreiseck-Logo (roter Kreis + Schriftzug "KREISECK / Software Solutions").
///
/// Ohne [color] kommt das Logo in den Originalfarben. Wer eine einfarbige
/// Variante braucht, gibt einfach eine Farbe an – dann wird das ganze Logo
/// auf diese Farbe gelegt:
///
/// ```dart
/// KreiseckLogo(width: 150)                  // Originalfarben
/// KreiseckLogo(color: Colors.white, ...)    // einfarbig weiss
/// ```
class KreiseckLogo extends StatelessWidget {
  const KreiseckLogo({
    super.key,
    this.color,
    this.width,
    this.height,
    this.fit = BoxFit.contain,
    this.semanticsLabel = 'Kreiseck',
  });

  /// Lässt das Logo einfarbig in dieser Farbe erscheinen.
  /// Bleibt sie `null`, gelten die Originalfarben.
  final Color? color;

  final double? width;
  final double? height;
  final BoxFit fit;
  final String semanticsLabel;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      _asset,
      package: _package,
      width: width,
      height: height,
      fit: fit,
      semanticsLabel: semanticsLabel,
      colorFilter:
          color == null ? null : ColorFilter.mode(color!, BlendMode.srcIn),
    );
  }
}
