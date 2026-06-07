# kreiseck_branding

Das Kreiseck-Logo und die Markenfarben als kleines Flutter-Paket, damit ich
das Branding nicht in jeder App neu zusammensuchen muss.

## Einbinden

Solange das Paket nur auf GitHub liegt, in die `pubspec.yaml` der App:

```yaml
dependencies:
  kreiseck_branding:
    git:
      url: https://github.com/mhmmdlkts/Kreiseck-Branding.git
      ref: main
```

Dann `flutter pub get`.

## Logo

```dart
import 'package:kreiseck_branding/kreiseck_branding.dart';
```

Ohne Farbe kommt das Logo so wie es gedacht ist – roter Kreis, schwarzer
Schriftzug, grauer Untertitel:

```dart
KreiseckLogo(width: 150)
```

Wenn ich es einfarbig brauche (z.B. weiss auf dunklem Grund), reicht eine
Farbe. Damit wird das komplette Logo auf diese eine Farbe gelegt:

```dart
KreiseckLogo(color: Colors.white, width: 150)
KreiseckLogo(color: Colors.red, width: 150)
```

Soll sich das einfarbige Logo nach Hell/Dunkel richten:

```dart
KreiseckLogo(
  color: KreiseckColors.forBrightness(Theme.of(context).brightness),
  width: 150,
)
```

Parameter: `color`, `width`, `height`, `fit` (Standard `BoxFit.contain`) und
`semanticsLabel`.

## Farben und Schrift

```dart
KreiseckColors.circle    // #930C0C  roter Kreis
KreiseckColors.wordmark  // #000000  Schriftzug
KreiseckColors.subtitle  // #5C5C5C  Untertitel
```

Das sind die Standardfarben – für einzelne Apps nehme ich aber durchaus auch
andere.

Hausschrift ist **DM Sans** (`kreiseckFontFamily`). Die liegt nicht im Paket,
die App muss sie selbst einbinden, etwa über `google_fonts`.

## Beispiel

Unter `example/` liegt eine kleine App, in der man die Logo-Farbe umschalten
kann.

## Lizenz

Siehe [LICENSE](LICENSE). Logo und Markenzeichen gehören Kreiseck Software
Solutions.
