import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mawapps/Colors.dart';
import 'package:mawapps/Home/Controller/ContatoController.dart';
import 'package:mawapps/Uteis.dart';
import 'package:mawapps/tamanhos.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Contato extends StatelessWidget {
  ScrollController scrollController;
  Contato(this.scrollController);
  @override
  Widget build(BuildContext context) {
    double sizeW = U.size(context).width;
    double sizeH = U.size(context).height;
    return GetBuilder<ContatoController>(
        init: ContatoController(),
        builder: (_) {
          return Container(
            child: Column(
              children: [
                Container(
                  width: sizeW,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      U.textoFontWeight(
                          text: "Contato",
                          size: textSize(sizeW, max: 60),
                          color: roxo),
                      SizedBox(
                        height: 20,
                      ),
                      U.texto(
                          text: "Nos deixe uma mensagem",
                          color: roxo,
                          size: textSize(sizeW, max: 20)),
                      SizedBox(
                        height: 20,
                      ),
                      Divider(
                        color: Colors.deepPurple.shade900,
                        endIndent: sizeW * .2,
                        indent: sizeW * .2,
                        height: 2,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: sizeW * .5,
                        child: TextField(
                          controller: _.nome,
                          decoration: InputDecoration(
                            hintText: "Nome*",
                            labelText: "Nome*",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            isDense: true,
                            hintStyle:
                                TextStyle(fontSize: textSize(sizeW, max: 15)),
                            labelStyle:
                                TextStyle(fontSize: textSize(sizeW, max: 15)),
                          ),
                          style: TextStyle(fontSize: textSize(sizeW, max: 15)),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: sizeW * .5,
                        child: TextField(
                          controller: _.email,
                          decoration: InputDecoration(
                            hintText: "E-Mail*",
                            labelText: "E-Mail*",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            isDense: true,
                            hintStyle:
                                TextStyle(fontSize: textSize(sizeW, max: 15)),
                            labelStyle:
                                TextStyle(fontSize: textSize(sizeW, max: 15)),
                          ),
                          style: TextStyle(fontSize: textSize(sizeW, max: 15)),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: sizeW * .5,
                        child: TextField(
                          controller: _.empresa,
                          decoration: InputDecoration(
                            hintText: "Empresa",
                            labelText: "Empresa",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            isDense: true,
                            hintStyle:
                                TextStyle(fontSize: textSize(sizeW, max: 15)),
                            labelStyle:
                                TextStyle(fontSize: textSize(sizeW, max: 15)),
                          ),
                          style: TextStyle(fontSize: textSize(sizeW, max: 15)),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: sizeW * .5,
                        child: TextField(
                          controller: _.telefone,
                          decoration: InputDecoration(
                            hintText: "Telefone*",
                            labelText: "Telefone*",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            isDense: true,
                            hintStyle:
                                TextStyle(fontSize: textSize(sizeW, max: 15)),
                            labelStyle:
                                TextStyle(fontSize: textSize(sizeW, max: 15)),
                          ),
                          style: TextStyle(fontSize: textSize(sizeW, max: 15)),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: sizeW * .5,
                        child: TextField(
                          controller: _.descricao,
                          decoration: InputDecoration(
                            hintText:
                                "Faça aqui uma breve descrição da sua ideia*",
                            labelText:
                                "Faça aqui uma breve descrição da sua ideia*",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            isDense: true,
                            hintStyle:
                                TextStyle(fontSize: textSize(sizeW, max: 15)),
                            labelStyle:
                                TextStyle(fontSize: textSize(sizeW, max: 15)),
                          ),
                          style: TextStyle(fontSize: textSize(sizeW, max: 15)),
                          maxLines: 10,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  child: Container(
                    width: sizeW * .3,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50), color: roxo),
                    child: Center(
                      child: U.textoFontWeight(
                          text: _.carregando ? "Carregando..." : "Enviar",
                          color: Colors.white,
                          size: textSize(sizeW, max: 20)),
                    ),
                  ),
                  onTap: () async {
                    print("Ola");

                    _.carregando = true;
                    _.update();
                    FirebaseFirestore c = FirebaseFirestore.instance;
                    var aa = c.collection("Propostas").doc();
                    if (_.nome.text.isNotEmpty &&
                        _.email.text.isNotEmpty &&
                        _.telefone.text.isNotEmpty &&
                        _.descricao.text.isNotEmpty) {
                      await aa.set({
                        "id": aa.id,
                        "nome": _.nome.text,
                        "email": _.email.text,
                        "empresa": _.empresa.text,
                        "telefone": _.telefone.text,
                        "descricao": _.descricao.text,
                        "data": DateTime.now().toIso8601String(),
                      }).then((value) async {
                        _.nome.clear();
                        _.empresa.clear();
                        _.email.clear();
                        _.telefone.clear();
                        _.descricao.clear();
                        String number =
                            """whatsapp://send?phone=+5517997513088&text=
                  Nome: ${_.nome.text},
                  E-mail: ${_.email.text},
                  Empresa: ${_.empresa.text},
                  Telefone: ${_.telefone.text},
                  Data: ${U.convertDataString(DateTime.now().toIso8601String())},
                  Descricao: ${_.descricao.text}
                  """;
                        await launch(number);

                        Get.snackbar(
                            "Sucesso!", "Em breve iremos entrar em contato",
                            snackPosition: SnackPosition.BOTTOM,
                            colorText: Colors.white,
                            backgroundColor: roxo,
                            duration: Duration(seconds: 5));
                        Future.delayed(Duration(seconds: 2)).then((value) {
                          scrollController.position.moveTo(1,
                              curve: Curves.fastLinearToSlowEaseIn,
                              duration: Duration(seconds: 2));
                        });

                        _.carregando = false;
                        _.update();
                      }).catchError((onError) {
                        print(onError);

                        _.carregando = false;
                        _.update();
                      });
                    } else {
                      _.carregando = false;
                      _.update();
                      Get.snackbar(
                        "Informações incompletas",
                        "Você precisa preencher todos os campos!",
                        snackPosition: SnackPosition.BOTTOM,
                        colorText: Colors.white,
                        backgroundColor: Colors.red,
                      );
                    }
                  },
                ),
                SizedBox(
                  height: sizeH * .1,
                ),
              ],
            ),
          );
        });
  }
}
