import 'dart:math';

import 'package:app5_cara_ou_coroa/Resultado.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int valor = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Color(0xff61bd86),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 48),
                child: Image.asset("images/logo.png"),
              ),
              GestureDetector(
                child: Image.asset("images/botao_jogar.png"),
                onTap: () {
                  setState(() {
                    valor = Random().nextInt(2);
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Resultado(valor)),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
