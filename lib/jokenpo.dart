import 'dart:math';

import 'package:flutter/material.dart';

class JokenpoApp extends StatefulWidget {
  const JokenpoApp({super.key});

  @override
  State<JokenpoApp> createState() => _JokenpoAppState();
}

class _JokenpoAppState extends State<JokenpoApp> {
  int maoEsquerda = 1;
  int maoDireita = 2;

  void trocar() {
    maoEsquerda = Random().nextInt(3) + 1;
    maoDireita = Random().nextInt(3) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Jokenpô")),
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        trocar();
                      });
                    },
                    child: Image.asset("imagens/imagem$maoEsquerda.png")),
              ),
              Expanded(
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        trocar();
                      });
                    },
                    child: Image.asset("imagens/imagem$maoDireita.png")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
