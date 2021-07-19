import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mawapps/Colors.dart';
import 'package:mawapps/Uteis.dart';
import 'package:mawapps/tamanhos.dart';

class HomeController extends GetxController {
  bool colorServico = true;
  bool colorTecnologia = true;

  static HomeController get to => Get.put(HomeController());

  final scrollController = ScrollController();

  Widget card(
      {double sizeW,
      double sizeH,
      String text,
      String secoundText,
      IconData icons,
      String image}) {
    return Padding(
      padding: EdgeInsets.only(left: sizeW * .025, right: sizeW * .025),
      child: Container(
          width: sizeW * .2,
          child: LayoutBuilder(builder: (a, c) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 300,
                  child: FadeInImage(
                    fadeInCurve: Curves.fastLinearToSlowEaseIn,
                    fadeInDuration: Duration(seconds: 1),
                    placeholder: NetworkImage(image),
                    image: NetworkImage(image),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                U.texto(
                    text: text,
                    color: Colors.white,
                    size: textSize(c.maxWidth),
                    textAlign: TextAlign.center),
                SizedBox(
                  height: 10,
                ),
                U.texto(
                    text: secoundText,
                    color: Colors.white,
                    size: textSize(c.maxWidth, max: 18),
                    textAlign: TextAlign.center),
              ],
            );
          })),
    );
  }

  Widget card2(
      {double sizeW,
      double sizeH,
      String text,
      String secoundText,
      IconData icons,
      }) {
    return LayoutBuilder(builder: (a, c) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AnimatedContainer(
            width: textSize(c.maxWidth, max: 100),
            height: 100,
            duration: Duration(seconds: 1),
            curve: Curves.fastLinearToSlowEaseIn,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5,
                  offset: Offset(1.0, 5.0),
                ),
              ],
              gradient: LinearGradient(
                colors: [
                  roxo,
                  Colors.deepPurple.shade900,
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
            ),
            child: Icon(icons,
                size: textSize(c.maxWidth, max: 50), color: Colors.white),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: sizeW,
            child: U.textoFontWeight(
                text: text,
                color: roxo,
                size: textSize(sizeW, max: 30),
                textAlign: TextAlign.center),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: sizeW,
            child: U.texto(
                text: secoundText,
                color: Colors.grey,
                size: textSize(sizeW, max: 20),
                textAlign: TextAlign.center),
          ),
        ],
      );
    });
  }

  Widget cardMobile(
      {double sizeW,
      double sizeH,
      String text,
      String secoundText,
      IconData icons,
      String image}) {
    return Padding(
      padding: EdgeInsets.only(left: sizeW * .025, right: sizeW * .025),
      child: Container(
          width: sizeW * .6,
          child: LayoutBuilder(builder: (a, c) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 300,
                  child: FadeInImage(
                    fadeInCurve: Curves.fastLinearToSlowEaseIn,
                    fadeInDuration: Duration(seconds: 1),
                    placeholder: NetworkImage(image),
                    image: NetworkImage(image),
                    fit: BoxFit.contain,
                  ),
                ),
               
                U.texto(
                    text: text,
                    color: Colors.white,
                    size: textSize(c.maxWidth),
                    textAlign: TextAlign.center),
                SizedBox(
                  height: 10,
                ),
                U.texto(
                    text: secoundText,
                    color: Colors.white,
                    size: textSize(c.maxWidth, max: 18),
                    textAlign: TextAlign.center),
              ],
            );
          })),
    );
  }

  Widget card2Mobile(
      {double sizeW,
      double sizeH,
      String text,
      String secoundText,
      IconData icons,
      }) {
    return LayoutBuilder(builder: (a, c) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AnimatedContainer(
            width: textSize(c.maxWidth, max: 75),
            height: 75,
            duration: Duration(seconds: 1),
            curve: Curves.fastLinearToSlowEaseIn,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5,
                  offset: Offset(1.0, 5.0),
                ),
              ],
              gradient: LinearGradient(
                colors: [
                  roxo,
                  Colors.deepPurple.shade900,
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
            ),
            child: Icon(icons,
                size: textSize(c.maxWidth, max: 50), color: Colors.white),
          ),
          SizedBox(
            height: sizeH * .01,
          ),
          Container(
            width: sizeW,
            child: U.textoFontWeight(
                text: text,
                color: roxo,
                size: textSize(sizeW, max: 30),
                textAlign: TextAlign.center),
          ),
          SizedBox(
            height: sizeH * .01,
          ),
          Container(
            width: sizeW,
            child: U.texto(
                text: secoundText,
                color: Colors.grey,
                size: textSize(sizeW, max: 20),
                textAlign: TextAlign.center),
          ),
        ],
      );
    });
  }

  Widget button(double sizeW) {
    return GestureDetector(
      child: Container(
        width: sizeW * .3,
        height: sizeW * .05,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: Colors.white),
        child: Center(
          child: U.textoFontWeight(
              text: "Solicitar orçamento", color: roxo, size: sizeW * .02),
        ),
      ),
      onTap: () {
        scrollController.position.moveTo(5926,
            curve: Curves.fastLinearToSlowEaseIn,
            duration: Duration(seconds: 2));
      },
    );
  }

  @override
  void onInit() {
    scrollController.addListener(() {
     //Total Page 6088.78449278438
     
     
    });
    super.onInit();
  }
}
