import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  const Resposta({super.key, required this.texto});

  final String texto;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: null, child: Text(texto));
  }
}
