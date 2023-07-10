import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  const Questao({super.key, required this.texto});

  final String texto;

  @override
  Widget build(BuildContext context) {
    return Text(texto);
  }
}
