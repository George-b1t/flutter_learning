import 'package:flutter/material.dart';
import 'package:udemy_first_project/questao.dart';
import 'package:udemy_first_project/resposta.dart';

main() => runApp(const PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void responder() {
    if (_perguntaSelecionada == 2) return;

    setState(() {
      _perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List perguntas = [
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

    List<String> respostas = perguntas[_perguntaSelecionada]['respostas'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Perguntas")),
        body: Column(
          children: [
            Questao(
              texto: perguntas[_perguntaSelecionada]['texto'],
            ),
            ...respostas
                .map((texto) =>
                    Resposta(texto: texto, quandoSelecionado: responder))
                .toList()
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
