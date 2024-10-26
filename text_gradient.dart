import 'package:flutter/material.dart';

class TextGradient extends StatefulWidget {
  const TextGradient({super.key});

  @override
  State<TextGradient> createState() => _TextGradientState();
}

class _TextGradientState extends State<TextGradient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Codeline",
          style: TextStyle(
            fontSize: 100,
            foreground: Paint()
              ..shader =
                  LinearGradient(colors: [Colors.redAccent, Colors.purple])
                      .createShader(
                Rect.fromLTRB(120, 50, 50, 50),
              ),
            // foreground: Paint()
            //   ..shader =
            //       const LinearGradient(colors: [Colors.blue, Colors.orange])
            //           .createShader(
            //     const Rect.fromLTRB(140, 30, 280, 30),
            //   ),
          ),
        ),
      ),
    );
  }
}
