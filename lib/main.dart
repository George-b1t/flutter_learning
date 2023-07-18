import 'package:flutter/material.dart';
import 'package:udemy_first_project/questao.dart';
import 'package:udemy_first_project/questionario.dart';
import 'package:udemy_first_project/resposta.dart';
import 'package:udemy_first_project/resultado.dart';

main() => runApp(const PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  final List perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco']
    },
    {
      'texto': 'Qual o seu animal favorito?',
      'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão']
    },
    {
      'texto': 'Qual o seu instrutor favorito?',
      'respostas': ['Maria', 'João', 'Leo', 'Pedro']
    }
  ];

  void responder() {
    if (!temPerguntaSelecionada) return;

    setState(() {
      _perguntaSelecionada++;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Perguntas")),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                responder: responder,
              )
            : const Resultado(),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
