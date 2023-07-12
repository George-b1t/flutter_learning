import 'package:flutter/material.dart';
import 'package:udemy_first_project/questao.dart';
import 'package:udemy_first_project/resposta.dart';

main() => runApp(const PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void responder() {
    if (_perguntaSelecionada == 1) return;

    setState(() {
      _perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      "Qual é a sua cor favorita?",
      "Qual é o seu animal favorito?"
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Perguntas")),
        body: Column(
          children: [
            Questao(
              texto: perguntas[_perguntaSelecionada],
            ),
            const Resposta(
              texto: "Resposta 1",
            ),
            const Resposta(
              texto: "Resposta 2",
            ),
            const Resposta(
              texto: "Resposta 3",
            ),
          ],
        ),
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
