import 'package:flutter/material.dart';

/// Die festen Farben des Kreiseck-Logos.
///
/// Der rote Kreis ist das Erkennungszeichen, der Schriftzug ist schwarz,
/// der Untertitel grau. Wenn das Logo mal einfarbig sein soll (z.B. weiss
/// auf dunklem Grund), lässt sich über [KreiseckLogo] trotzdem jede Farbe
/// setzen.
abstract final class KreiseckColors {
  KreiseckColors._();

  /// Roter Kreis – das Markenzeichen.
  static const Color circle = Color(0xFF930C0C);

  /// Schriftzug "KREISECK".
  static const Color wordmark = Color(0xFF000000);

  /// Untertitel "Software Solutions".
  static const Color subtitle = Color(0xFF5C5C5C);

  /// Farbe fürs einfarbige Logo je nach Hintergrund: schwarzer Schriftzug
  /// auf hellem, weiss auf dunklem Grund.
  static Color forBrightness(Brightness brightness) =>
      brightness == Brightness.dark ? Colors.white : wordmark;
}

/// Hausschrift von Kreiseck. Liegt nicht im Paket – die App muss DM Sans
/// selbst einbinden (z.B. per google_fonts oder als Asset).
const String kreiseckFontFamily = 'DM Sans';
