import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  final List perguntas;
  final int perguntaSelecionada;
  final void Function() responder;

  const Questionario({
    super.key,
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.responder,
  });

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada]['respostas']
        : [];

    return Column(
      children: [
        Questao(
          texto: perguntas[perguntaSelecionada]['texto'],
        ),
        ...respostas
            .map(
                (texto) => Resposta(texto: texto, quandoSelecionado: responder))
            .toList()
      ],
    );
  }
}
