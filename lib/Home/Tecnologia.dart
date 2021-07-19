import 'package:flutter/material.dart';
import 'package:mawapps/Colors.dart';
import 'package:mawapps/Uteis.dart';
import 'package:mawapps/tamanhos.dart';

class Tecnologia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double sizeW = U.size(context).width;
    double sizeH = U.size(context).height;
    return Container(
      child: LayoutBuilder(
        builder: (a, c) {
          double sizeW = c.maxWidth;
          return Column(
            children: [
            
              U.textoFontWeight(text: "Tecnologia", size: textSize(sizeW, max: 60), color: roxo),
              SizedBox(
                height: 50,
              ),
              Image.network(
                  "https://firebasestorage.googleapis.com/v0/b/mawi-fa9af.appspot.com/o/flutter.png?alt=media&token=9a827f98-0bdf-4c86-90a0-6a632d7dfa43"),
              SizedBox(
                height: 20,
              ),
              Container(
                  width: sizeW * .95,
                  child: U.texto(
                    text:
                        "Novas tecnologias surgem anualmente na tentativa de melhorar a performance e o desempenho no desenvolvimento iOS e Android. A MaWi está sempre atenta a estas novas tecnologias e utiliza o que há de mais moderno na criação de aplicativos iOS e Android.",
                    size: textSize(sizeW, max: 20),
                    color: Colors.grey,
                    textAlign: TextAlign.center,
                  )),
              SizedBox(
                height: 30,
              ),
              Container(
                  width: sizeW * .95,
                  child: U.textoFontWeight(
                    text: "O que é Flutter?",
                    size: textSize(sizeW, max: 40),
                    color: roxo,
                    textAlign: TextAlign.center,
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: sizeW * .95,
                  child: U.texto(
                    text:
                        "Flutter é um framework para desenvolvimento híbrido de aplicativos utilizando a linguagem Dart como base de criação dos aplicativos.",
                    size: textSize(sizeW, max: 20),
                    color: Colors.grey,
                    textAlign: TextAlign.center,
                  )),
              SizedBox(
                height: 30,
              ),
              Container(
                  width: sizeW * .95,
                  child: U.textoFontWeight(
                    text: "Por que usar o Flutter?",
                    size: textSize(sizeW, max: 40),
                    color: roxo,
                    textAlign: TextAlign.center,
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: sizeW * .95,
                  child: U.texto(
                    text:
                        "O Flutter é desenhado diretamente em um canvas que aumenta a performance e fluidez a nível de um aplicativo desenvolvido exclusivamente nativo. Além do ganho com performance o Flutter é multplataforma onde conseguimos desenvolver Aplicativos Mobile (Android e IOS), Aplicações Web, Aplicações Desktop, Aplicações de Sistemas Embutidos, e tudo isso com um design incrível.",
                    size: textSize(sizeW, max: 20),
                    color: Colors.grey,
                    textAlign: TextAlign.center,
                  )),
            ],
          );
        }
      ),
    );
  }
}
