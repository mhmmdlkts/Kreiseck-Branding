import 'package:flutter/material.dart';
import 'package:kreiseck_branding/kreiseck_branding.dart';

void main() => runApp(const ExampleApp());

class ExampleApp extends StatefulWidget {
  const ExampleApp({super.key});

  @override
  State<ExampleApp> createState() => _ExampleAppState();
}

class _ExampleAppState extends State<ExampleApp> {
  // Auswählbare Farben für das "Eingabefeld".
  static const _palette = <Color>[
    KreiseckColors.brand,
    Colors.red,
    Colors.green,
    Colors.deepPurple,
    Colors.black,
  ];
  Color _color = KreiseckColors.brand;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kreiseck Branding',
      theme: ThemeData(colorSchemeSeed: KreiseckColors.brand),
      home: Scaffold(
        appBar: AppBar(title: const Text('Kreiseck Branding')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              KreiseckLogo(color: _color, width: 220),
              const SizedBox(height: 48),
              const Text('Farbe wählen:'),
              const SizedBox(height: 12),
              Wrap(
                spacing: 12,
                children: [
                  for (final c in _palette)
                    GestureDetector(
                      onTap: () => setState(() => _color = c),
                      child: CircleAvatar(
                        backgroundColor: c,
                        radius: 18,
                        child: _color == c
                            ? const Icon(Icons.check, color: Colors.white, size: 18)
                            : null,
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
