import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  const Resposta(
      {super.key, required this.texto, required this.quandoSelecionado});

  final String texto;
  final void Function() quandoSelecionado;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
          ),
          onPressed: quandoSelecionado,
          child: Text(texto),
        ),
      ),
    );
  }
}
