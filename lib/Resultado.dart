import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Resultado extends StatefulWidget {
  int valor;

  Resultado(this.valor);

  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {
    print(widget.valor);

    var _caminhoImagem = "images/moeda_cara.png";
    if (widget.valor == 0) {
      setState(() {
        _caminhoImagem = "images/moeda_cara.png";
      });
    } else {
      setState(() {
        _caminhoImagem = "images/moeda_coroa.png";
      });
    }

    return Scaffold(
      body: Center(
        child: Container(
          color: Color(0xff61bd86),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(_caminhoImagem, height: 500),
              GestureDetector(
                child: Image.asset("images/botao_voltar.png"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
