import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContatoController extends GetxController {
  String valor = "Abaixo de R\$ 60.000";
  final TextEditingController nome = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController empresa = TextEditingController();
  final TextEditingController telefone = TextEditingController();
  final TextEditingController descricao = TextEditingController();
  bool carregando = false;



}