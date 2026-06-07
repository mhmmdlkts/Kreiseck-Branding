<div align="center">

# Kreiseck Branding

**Das offizielle Branding von Kreiseck Software Solutions für Flutter.**

Logo-Widget, Markenfarben und Assets – damit das Kreiseck-Branding
in jeder App einheitlich und mit frei wählbarer Farbe gezeichnet wird.

</div>

---

## Was ist drin?

| Komponente          | Beschreibung                                                        |
| ------------------- | ------------------------------------------------------------------ |
| `KreiseckLogo`      | Logo-Widget, auf eine beliebige Farbe einfärbbar (oder original).  |
| `KreiseckColors`    | Zentrale Markenfarben (`brand`, `brandLight`, `subtitle`).         |
| Assets              | `kreiseck_logo.svg`, `kreiseck_branding(.dark).png`.               |

---

## Installation

Da das Paket (vorerst) über Git verteilt wird, in der `pubspec.yaml` der
App eintragen:

```yaml
dependencies:
  kreiseck_branding:
    git:
      url: https://github.com/mhmmdlkts/Kreiseck-Branding.git
      ref: main   # oder ein Tag wie v0.1.0
```

Danach:

```bash
flutter pub get
```

> Sobald das Paket auf [pub.dev](https://pub.dev) veröffentlicht ist, genügt
> `kreiseck_branding: ^0.1.0`.

---

## Verwendung

```dart
import 'package:kreiseck_branding/kreiseck_branding.dart';
```

### Logo mit eigener Farbe

Die Farbe ist das zentrale Eingabefeld – das gesamte Logo wird auf genau
diese eine Farbe vereinheitlicht:

```dart
const KreiseckLogo(
  color: Colors.red,
  width: 150,
)
```

### Logo in der Markenfarbe

```dart
const KreiseckLogo(
  color: KreiseckColors.brand,
  width: 150,
)
```

### Logo automatisch passend zum Theme

Ohne `color` richtet sich das Logo nach der Helligkeit des aktuellen Themes:
Markenfarbe im Light-Mode, Weiß im Dark-Mode.

```dart
const KreiseckLogo(width: 150)
```

### Original-Logo (mehrfarbig)

```dart
const KreiseckLogo.original(width: 150)
```

### Markenfarben direkt nutzen

```dart
Container(color: KreiseckColors.brand);

Text(
  'Kreiseck',
  style: TextStyle(
    color: KreiseckColors.forBrightness(Theme.of(context).brightness),
  ),
);
```

---

## API

### `KreiseckLogo`

| Parameter        | Typ        | Default            | Beschreibung                                          |
| ---------------- | ---------- | ------------------ | ----------------------------------------------------- |
| `color`          | `Color?`   | `null`             | Einfärbung. `null` ⇒ automatisch passend zum Theme.   |
| `width`          | `double?`  | `null`             | Gewünschte Breite.                                    |
| `height`         | `double?`  | `null`             | Gewünschte Höhe.                                      |
| `fit`            | `BoxFit`   | `BoxFit.contain`   | Einpassung in die vorgegebene Größe.                  |
| `semanticsLabel` | `String`   | `'Kreiseck Logo'`  | Label für Screenreader.                               |

`KreiseckLogo.original(...)` zeichnet das Logo ohne Farbfilter (mehrfarbig).

### `KreiseckColors`

| Konstante / Methode             | Wert / Rückgabe              |
| ------------------------------- | ---------------------------- |
| `brand`                         | `#2C3E50` (Slate-Blau)       |
| `brandLight`                    | `#A2C2DC`                    |
| `subtitle`                      | `#5C5C5C`                    |
| `forBrightness(Brightness)`     | Markenfarbe / Weiß je Modus  |

---

## Lizenz

© Kreiseck Software Solutions. Siehe [LICENSE](LICENSE).
