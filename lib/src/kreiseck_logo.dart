import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'kreiseck_colors.dart';

const String _kPackage = 'kreiseck_branding';
const String _kLogoAsset = 'assets/kreiseck_logo.svg';

/// Das Kreiseck-Logo (Kreis + Schriftzug "KREISECK / Software Solutions").
///
/// Das Logo wird über einen [ColorFilter] auf **eine** Farbe vereinheitlicht,
/// damit es in jeder App eindeutig und konsistent gezeichnet werden kann.
///
/// Die Farbe ist das zentrale Eingabefeld:
///
/// ```dart
/// // Feste Farbe:
/// const KreiseckLogo(color: Colors.red, width: 150)
///
/// // Markenfarbe:
/// const KreiseckLogo(color: KreiseckColors.brand, width: 150)
///
/// // Automatisch passend zum Theme (Markenfarbe im Light-, Weiß im Dark-Mode):
/// const KreiseckLogo(width: 150)
///
/// // Original-Mehrfarbig (kein Filter):
/// const KreiseckLogo.original(width: 150)
/// ```
class KreiseckLogo extends StatelessWidget {
  /// Logo in einer einzelnen, frei wählbaren Farbe.
  ///
  /// Ist [color] `null`, richtet sich die Farbe automatisch nach dem Theme
  /// ([KreiseckColors.forBrightness]).
  const KreiseckLogo({
    super.key,
    this.color,
    this.width,
    this.height,
    this.fit = BoxFit.contain,
    this.semanticsLabel = 'Kreiseck Logo',
  }) : _original = false;

  /// Logo in den Original-Farben (kein Farbfilter).
  const KreiseckLogo.original({
    super.key,
    this.width,
    this.height,
    this.fit = BoxFit.contain,
    this.semanticsLabel = 'Kreiseck Logo',
  })  : color = null,
        _original = true;

  /// Die Farbe, auf die das Logo eingefärbt wird.
  ///
  /// `null` ⇒ automatisch passend zur Theme-Helligkeit.
  final Color? color;

  /// Gewünschte Breite. Bei `null` wird die [height] bzw. die intrinsische
  /// Größe verwendet.
  final double? width;

  /// Gewünschte Höhe.
  final double? height;

  /// Wie das Logo in die vorgegebene Größe eingepasst wird.
  final BoxFit fit;

  /// Label für Screenreader / Barrierefreiheit.
  final String semanticsLabel;

  final bool _original;

  @override
  Widget build(BuildContext context) {
    final ColorFilter? filter = _original
        ? null
        : ColorFilter.mode(
            color ?? KreiseckColors.forBrightness(Theme.of(context).brightness),
            BlendMode.srcIn,
          );

    return SvgPicture.asset(
      _kLogoAsset,
      package: _kPackage,
      width: width,
      height: height,
      fit: fit,
      colorFilter: filter,
      semanticsLabel: semanticsLabel,
    );
  }
}
