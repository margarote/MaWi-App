import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Colors.dart';

class U {
  static Size size(context) => MediaQuery.of(context).size;
  static Widget EspacoW(double width) => SizedBox(width: width);

  static Widget EspacoH(double height) => SizedBox(height: height);

  static Widget textoFontWeight({
    String text = "",
    double size = 0,
    Color color = Colors.white,
    TextAlign textAlign = TextAlign.center,
    bool overflow = false,
  }) =>
      Text(
        text,
        style: GoogleFonts.average(
            fontSize: size, color: color, fontWeight: FontWeight.bold),
        textAlign: textAlign,
        overflow: overflow ? TextOverflow.ellipsis : null,
      );

  static Widget textoFontWeightSemOverflow({
    String text = "",
    double size = 0,
    Color color = Colors.white,
    TextAlign textAlign = TextAlign.center,
  }) =>
      Text(
        text,
        style: GoogleFonts.robotoCondensed(
            fontSize: size, color: color, fontWeight: FontWeight.bold),
        textAlign: textAlign,
      );

  static Widget texto(
      {String text = "",
        double size = 0,
        Color color = Colors.white,
        TextAlign textAlign = TextAlign.justify}) =>
      Text(
        text,
        style: GoogleFonts.average(
            fontSize: size, color: color),
        textAlign: textAlign,
      );

  static TextStyle style = GoogleFonts.robotoCondensed();

  static Widget ContainerSimpleCircular({
    double borderRadius = 0,
    Color color = Colors.white,
    double largura = 0,
    double altura = 0,
    Widget filho,
  }) {
    return Container(
      width: largura,
      height: altura,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: color,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5,
            offset: Offset(3.0, 1.0),
            spreadRadius: 3.0,
          ),
        ],
      ),
      child: filho,
    );
  }

  static Widget ContainerAnimated({
    double borderRadius = 0,
    Color color = Colors.white,
    double largura = 0,
    double altura = 0,
    miliseconds,
    Curve curve = Curves.elasticInOut,
    Widget filho,
  }) {
    return AnimatedContainer(
      duration: Duration(milliseconds: miliseconds),
      curve: curve,
      width: largura,
      height: altura,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: color,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5,
            offset: Offset(3.0, 1.0),
            spreadRadius: 3.0,
          ),
        ],
      ),
      child: filho,
    );
  }

  static Widget ContainerGestureAnimated({
    double borderRadius = 0,
    Color color = Colors.white,
    double largura = 0,
    double altura = 0,
    int miliseconds = 0,
    VoidCallback funcao,
    Curve curve = Curves.elasticInOut,
    Widget filho,
  }) {
    return GestureDetector(
      child: AnimatedContainer(
        duration: Duration(milliseconds: miliseconds),
        curve: curve,
        width: largura,
        height: altura,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: color,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5,
              offset: Offset(3.0, 1.0),
              spreadRadius: 3.0,
            ),
          ],
        ),
        child: filho,
      ),
      onTap: funcao,
    );
  }

  static Widget ContainerGesture({
    double borderRadius = 0,
    Color color = Colors.white,
    double largura = 0,
    double altura = 0,
    Widget filho,
    VoidCallback function,
  }) {
    return GestureDetector(
      child: Container(
        width: largura,
        height: altura,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: color,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5,
              offset: Offset(3.0, 1.0),
              spreadRadius: 3.0,
            ),
          ],
        ),
        child: filho,
      ),
      onTap: function,
    );
  }

  // static Future navigatorPush(
  //     {Widget tela,
  //     BuildContext context,
  //     Alignment alignment}) {
  //   return Navigator.push(
  //       context,
  //       AnimationPageRouteByMagaroti(
  //         alignment: Alignment.topLeft,
  //         duration: 2,
  //         Tela: tela,
  //       ));
  // }

  // static Future navigatorRemoveUtil(
  //     {Widget tela,
  //     BuildContext context,
  //     Alignment alignment}) {
  //   return Navigator.pushAndRemoveUntil(
  //       context,
  //       AnimationPageRouteByMagaroti(
  //         alignment: alignment != null ? alignment : Alignment.topLeft,
  //         duration: 2,
  //         Tela: tela,
  //       ),
  //       (route) => false);
  // }

  static Widget Foto_Circular_Network(
      {String url = "", double width = 0, double height = 0}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(400),
      child: Image.network(
        url,
        height: height,
        width: width,
        fit: BoxFit.cover,
      ),
    );
  }

  static Widget dateFormat(
      {String dado = "", Color color = Colors.white, double size = 0}) {
    String dia = dado.substring(8, 10);
    String mes = dado.substring(5, 7);
    String ano = dado.substring(0, 4);
    return U.texto(text: "$dia/$mes/$ano", color: color, size: size);
  }

  static convertDataString(String data) {
    String dia = data.substring(8, 10);
    String mes = data.substring(5, 7);
    String ano = data.substring(0, 4);
    return "$dia/$mes/$ano";
  }
}
