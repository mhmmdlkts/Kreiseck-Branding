import 'package:flutter/material.dart';

/// Zentrale Markenfarben von Kreiseck Software Solutions.
///
/// In jeder App identisch verwendbar – als `const` für `const`-Widgets,
/// Enums etc.
abstract final class KreiseckColors {
  KreiseckColors._();

  /// Primäre Markenfarbe (Slate-Blau, `#2C3E50`).
  static const Color brand = Color(0xFF2C3E50);

  /// Hellere Variante der Markenfarbe – z.B. für Akzente auf dunklem Grund.
  static const Color brandLight = Color(0xFFA2C2DC);

  /// Sekundärfarbe für den Subtitel ("Software Solutions").
  static const Color subtitle = Color(0xFF5C5C5C);

  /// Liefert die passende Logo-/Markenfarbe für die aktuelle Helligkeit:
  /// Markenfarbe im Light-, Weiß im Dark-Mode.
  static Color forBrightness(Brightness brightness) =>
      brightness == Brightness.dark ? Colors.white : brand;
}
