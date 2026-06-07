import 'package:flutter/material.dart';
import 'package:kreiseck_branding/kreiseck_branding.dart';

void main() => runApp(const ExampleApp());

class ExampleApp extends StatefulWidget {
  const ExampleApp({super.key});

  @override
  State<ExampleApp> createState() => _ExampleAppState();
}

class _ExampleAppState extends State<ExampleApp> {
  // null = Originalfarben, sonst einfarbig.
  static const _choices = <Color?>[
    null,
    Colors.black,
    Colors.white,
    Colors.red,
    Colors.blue,
  ];
  Color? _color;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kreiseck Branding',
      home: Scaffold(
        appBar: AppBar(title: const Text('Kreiseck Branding')),
        backgroundColor: _color == Colors.white ? Colors.black54 : null,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              KreiseckLogo(color: _color, width: 240),
              const SizedBox(height: 48),
              const Text('Farbe:'),
              const SizedBox(height: 12),
              Wrap(
                spacing: 12,
                children: [
                  for (final c in _choices)
                    GestureDetector(
                      onTap: () => setState(() => _color = c),
                      child: CircleAvatar(
                        radius: 18,
                        backgroundColor: c ?? KreiseckColors.circle,
                        child: _color == c
                            ? Icon(Icons.check,
                                size: 18,
                                color: c == Colors.white
                                    ? Colors.black
                                    : Colors.white)
                            : (c == null
                                ? const Text('A',
                                    style: TextStyle(color: Colors.white))
                                : null),
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
