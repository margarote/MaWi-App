import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mawapps/Colors.dart';
import 'package:mawapps/Home/Contato.dart';
import 'package:mawapps/Home/Controller/HomeController.dart';
import 'package:mawapps/Responsive.dart';
import 'package:mawapps/Uteis.dart';
import 'package:mawapps/tamanhos.dart';
import 'package:url_launcher/url_launcher.dart';
import '../Colors.dart';
import 'HomeMobile.dart';
import 'Tecnologia.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:transparent_image/transparent_image.dart' as tr;

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double sizeW = MediaQuery.of(context).size.width;
    double sizeH = MediaQuery.of(context).size.height;

    HomeController _ = HomeController.to;

    return Responsive(
      mobile: HomeMobile(),
      desktop: LayoutBuilder(builder: (a, c) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.green,
            child: FaIcon(
              FontAwesomeIcons.whatsapp,
              color: Colors.white,
              size: textSize(sizeW, max: 40),
            ),
            onPressed: () async {
              String number = "whatsapp://send?phone=+5547997335801";
              await launch(number);
            },
          ),
          appBar: AppBar(
            leadingWidth: c.maxWidth * .1,
            toolbarHeight: 80,
            bottomOpacity: 0.0,
            foregroundColor: Colors.deepPurple.shade900,
            toolbarOpacity: 0.0,
            backgroundColor: Colors.deepPurple.shade900,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  roxo,
                  Colors.deepPurple.shade900,
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              )),
            ),
            elevation: 0.0,
            leading: Padding(
              padding:
                  EdgeInsets.only(left: c.maxWidth * .05, top: 0, bottom: 0),
              child: Container(
                width: c.maxWidth * .3,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://firebasestorage.googleapis.com/v0/b/mawi-fa9af.appspot.com/o/Mawi_logo_vers1_branco.png?alt=media&token=0247bb98-94db-4836-91f0-6afe0cd00faa"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            actions: [
              Container(
                width: c.maxWidth * .65,
                height: 80,
                margin: EdgeInsets.only(right: 20),
                child: LayoutBuilder(builder: (a, c) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GetBuilder<HomeController>(
                        init: HomeController(),
                        initState: (_) {},
                        builder: (_) {
                          return InkWell(
                            child: U.texto(
                                text: "Serviços",
                                color: Colors.white,
                                size: textSize(c.maxWidth, max: 20),
                                textAlign: TextAlign.center),
                            onTap: () {
                              _.scrollController.position.moveTo(1,
                                  curve: Curves.slowMiddle,
                                  duration: Duration(seconds: 2));
                            },
                          );
                        },
                      ),
                      SizedBox(
                        width: c.maxWidth * .03,
                      ),
                      GetBuilder<HomeController>(
                        init: HomeController(),
                        initState: (_) {},
                        builder: (_) {
                          return InkWell(
                            child: U.texto(
                                text: "Produtos",
                                color: Colors.white,
                                size: textSize(c.maxWidth, max: 20),
                                textAlign: TextAlign.center),
                            onTap: () {
                              _.scrollController.position.moveTo(1200,
                                  curve: Curves.slowMiddle,
                                  duration: Duration(seconds: 2));
                            },
                          );
                        },
                      ),
                      SizedBox(
                        width: c.maxWidth * .03,
                      ),
                      GetBuilder<HomeController>(
                        init: HomeController(),
                        initState: (_) {},
                        builder: (_) {
                          return InkWell(
                            child: U.texto(
                                text: "Tecnologias",
                                color: Colors.white,
                                size: textSize(c.maxWidth, max: 20),
                                textAlign: TextAlign.center),
                            onTap: () {
                              _.scrollController.position.moveTo(4800,
                                  curve: Curves.slowMiddle,
                                  duration: Duration(seconds: 2));
                            },
                          );
                        },
                      ),
                      SizedBox(
                        width: c.maxWidth * .03,
                      ),
                      GetBuilder<HomeController>(
                        init: HomeController(),
                        initState: (_) {},
                        builder: (_) {
                          return InkWell(
                            child: U.texto(
                                text: "Contato",
                                color: Colors.white,
                                size: textSize(c.maxWidth, max: 20),
                                textAlign: TextAlign.center),
                            onTap: () {
                              _.scrollController.position.moveTo(10000,
                                  curve: Curves.slowMiddle,
                                  duration: Duration(seconds: 2));
                            },
                          );
                        },
                      ),
                      SizedBox(
                        width: c.maxWidth * .03,
                      ),
                      GetBuilder<HomeController>(
                        init: HomeController(),
                        initState: (_) {},
                        builder: (_) {
                          return InkWell(
                            child: U.texto(
                                text: "Quem Somos",
                                color: Colors.white,
                                size: textSize(c.maxWidth, max: 20),
                                textAlign: TextAlign.center),
                            onTap: () {
                              Get.dialog(Container(
                                width: sizeW * .5,
                                height: sizeW * .5,
                                color: Colors.white,
                                child: LayoutBuilder(builder: (a, c) {
                                  double sizeW = c.maxWidth;
                                  return Material(
                                    child: Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                roxo,
                                                Colors.deepPurple.shade900,
                                              ],
                                              begin: Alignment.bottomLeft,
                                              end: Alignment.topRight,
                                            ),
                                          ),
                                          height: sizeW * .15,
                                          child: Center(
                                            child: U.textoFontWeight(
                                              text: "Quem Somos",
                                              color: Colors.white,
                                              size: sizeW * .05,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 30,
                                        ),
                                        Container(
                                          width: sizeW * .9,
                                          child: U.textoFontWeight(
                                              text:
                                                  """Somos especializados em desenvolvimento de plataformas Web e Mobile de alta performance. Possuímos também produtos completos, prontos para utilização, com tecnologia avançada e moderna.""",
                                              color: roxo,
                                              size:
                                                  textSize(c.maxWidth, max: 20),
                                              textAlign: TextAlign.justify),
                                        ),
                                        SizedBox(
                                          height: 30,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            FlatButton(
                                              onPressed: () {
                                                Get.back();
                                              },
                                              child: U.textoFontWeight(
                                                text: "Ok",
                                                color: roxo,
                                                size: sizeW * .015,
                                              ),
                                            ),
                                            SizedBox(
                                              width: sizeW * .05,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  );
                                }),
                              ));
                            },
                          );
                        },
                      ),
                    ],
                  );
                }),
              ),
            ],
          ),
          backgroundColor: Colors.white,
          body: Stack(
            children: [
              Scrollbar(
                controller: _.scrollController,
                child: SingleChildScrollView(
                  controller: _.scrollController,
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              roxo,
                              Colors.deepPurple.shade900,
                            ],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 150,
                            ),
                            Container(
                              height: 500,
                              width: c.maxWidth,
                              child: LayoutBuilder(builder: (a, c) {
                                double sizeW = c.maxWidth;
                                double sizeH = c.maxHeight;
                                return Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    GetBuilder<HomeController>(
                                      init: HomeController(),
                                      initState: (_) {},
                                      builder: (_) {
                                        return FadeInImage.memoryNetwork(
                                          fadeInCurve: Curves.slowMiddle,
                                          fadeInDuration: Duration(seconds: 1),
                                          placeholder: tr.kTransparentImage,
                                          image:
                                              "https://firebasestorage.googleapis.com/v0/b/mawi-fa9af.appspot.com/o/Mawi_logo_vers1_branco.png?alt=media&token=0247bb98-94db-4836-91f0-6afe0cd00faa",
                                        );
                                      },
                                    ),
                                    SizedBox(width: c.maxWidth * .05),
                                    GetBuilder<HomeController>(
                                      init: HomeController(),
                                      initState: (_) {},
                                      builder: (_) {
                                        return FadeInImage.memoryNetwork(
                                          fadeInCurve: Curves.slowMiddle,
                                          fadeInDuration: Duration(seconds: 1),
                                          placeholder: tr.kTransparentImage,
                                          image:
                                              "https://firebasestorage.googleapis.com/v0/b/mawi-fa9af.appspot.com/o/10_Principal.png?alt=media&token=e050baed-0b2c-4cdd-8ce9-88c029dc54bd",
                                        );
                                      },
                                    )
                                  ],
                                );
                              }),
                            ),
                           
                            U.texto(
                                text:
                                    "Desenvolvemos Apps que fazem a diferença",
                                color: Colors.white,
                                size: sizeW * .025),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                                width: sizeW * .35,
                                child: U.texto(
                                    text:
                                        "Do design & desenvolvimento ao suporte pós-lançamento você tem um parceiro em nós",
                                    color: Colors.white,
                                    size: sizeW * .015,
                                    textAlign: TextAlign.center)),
                            SizedBox(
                              height: 100,
                            ),
                            Row(
                              children: [
                                _.card(
                                    text: "Mobile Apps",
                                    sizeW: sizeW,
                                    sizeH: 500,
                                    icons: Icons.mouse,
                                    secoundText:
                                        "Desenvolvemos seu aplicativo da idéia inicial ao produto final.",
                                    image:
                                        "https://firebasestorage.googleapis.com/v0/b/mawi-fa9af.appspot.com/o/08_Mobile-Apps.png?alt=media&token=edc8c7fe-9ded-4a88-8427-e9c91d7f7528"),
                                  
                                _.card(
                                    text: "Consultoria Estratégica",
                                    sizeW: sizeW,
                                    sizeH: 500,
                                    icons: Icons.my_library_add,
                                    secoundText:
                                        "Prestamos todo o suporte de consultoria durante o desenvolvimento.",
                                    image:
                                        "https://firebasestorage.googleapis.com/v0/b/mawi-fa9af.appspot.com/o/02_Consultoria-Estrat%E2%80%9Agica.png?alt=media&token=465c2deb-b976-4767-96a5-b517f809dfa2"),
                                _.card(
                                    text: "Desenvolvimento Web",
                                    sizeW: sizeW,
                                    sizeH: 500,
                                    icons: Icons.web,
                                    secoundText:
                                        "Criamos aplicativos web para que seu projeto esteja sempre em evidência.",
                                    image:
                                        "https://firebasestorage.googleapis.com/v0/b/mawi-fa9af.appspot.com/o/03_Desenvolvimento-Web.png?alt=media&token=b61b1701-bdd1-4eb3-95f8-52ea7a2df285"),
                                _.card(
                                    text: "Suporte pós-lançamento",
                                    sizeW: sizeW,
                                    sizeH: 500,
                                    icons: Icons.add_circle_outline,
                                    secoundText:
                                        "Prestamos todo suporte técnico durante e após o desenvolvimento.",
                                    image:
                                        "https://firebasestorage.googleapis.com/v0/b/mawi-fa9af.appspot.com/o/09_Suporte%20p%C2%A2s%20lan%E2%80%A1amento.png?alt=media&token=5a518209-f890-49fd-92be-ed49fa4481ff"),
                              ],
                            ),
                            SizedBox(height: 30,),
                            Image.network(
                                "https://firebasestorage.googleapis.com/v0/b/mawi-fa9af.appspot.com/o/waves.png?alt=media&token=ae6819a7-81f7-4083-91ec-c281268e2ec3"),
                          ],
                        ),
                      ),
                      GetBuilder<HomeController>(
                        init: HomeController(),
                        initState: (_) {},
                        builder: (_) {
                          return Column(
                            children: [
                              U.texto(
                                  text:
                                      "Nossos serviços vão de encontro as necessidades dos clientes.",
                                  color: roxo,
                                  size: textSize(c.maxWidth, max: 40)),
                              SizedBox(
                                height: 10,
                              ),
                              U.texto(
                                  text:
                                      "Nosso ponto forte consiste em nos adaptar as necessidades do cliente seja ela um desenvolvimento completo ou apenas uma consultoria.",
                                  size: textSize(c.maxWidth, max: 20),
                                  color: Colors.grey),
                            ],
                          );
                        },
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      GetBuilder<HomeController>(
                          init: HomeController(),
                          builder: (_) {
                            return Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _.card2(
                                      text: "Design Apps",
                                      sizeW: sizeW * .3,
                                      sizeH: 800,
                                      secoundText: """- Resvisão do Produto
- Mobile App Design
- Web App Design""",
                                      icons: Icons.design_services),
                                  SizedBox(
                                    width: sizeW * .05,
                                  ),
                                  _.card2(
                                      text: "Desenvolvimento de Apps",
                                      sizeW: sizeW * .3,
                                      sizeH: 800,
                                      secoundText: """- iOS Apps
- Android Apps
- Web Apps""",
                                      icons: Icons.smartphone),
                                  SizedBox(
                                    width: sizeW * .05,
                                  ),
                                  _.card2(
                                      text: "Desenvolvimento Web",
                                      sizeW: sizeW * .3,
                                      sizeH: 800,
                                      secoundText:
                                          """- Desenvolvimento de Aplicativos Customizados
- Desenvolvimento de Portais
- Desenvolvimento e Manutenção de Website""",
                                      icons: Icons.desktop_mac),
                                ],
                              ),
                            );
                          }),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          gradient: LinearGradient(
                            colors: [
                              roxo,
                              Colors.deepPurple.shade900,
                            ],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                          ),
                        ),
                        width: sizeW,
                        child: LayoutBuilder(builder: (a, c) {
                          double sizeW = c.maxWidth;
                          return Column(
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              U.textoFontWeight(
                                  text: "Delivery / E-Commerce",
                                  size: textSize(c.maxWidth, max: 40),
                                  color: Colors.white),
                              Divider(
                                color: Colors.deepPurple.shade900,
                                endIndent: sizeW * .2,
                                indent: sizeW * .2,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: sizeW * .6,
                                child: U.texto(
                                  text:
                                      """Desenvolvemos uma plataforma completa, com a mais alta tecnologia NATIVA em aplicativos (iOS e Android).
Solicite seu App próprio personalizado, com um sistema avançado de controle e alavanque suas vendas com total independência.""",
                                  size: textSize(c.maxWidth, max: 20),
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              _.button(sizeW),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FadeInImage.memoryNetwork(
                                    width: sizeW * .3,
                                    height: 500,
                                    fit: BoxFit.contain,
                                    fadeInCurve: Curves.slowMiddle,
                                    fadeInDuration: Duration(seconds: 1),
                                    placeholder: tr.kTransparentImage,
                                    image:
                                        "https://firebasestorage.googleapis.com/v0/b/mawi-fa9af.appspot.com/o/04_Economia.png?alt=media&token=2fdf932d-73a4-4943-843a-57eee160287e",
                                  ),
                                  SizedBox(
                                    width: sizeW * .01,
                                  ),
                                  Column(
                                    children: [
                                      U.textoFontWeight(
                                        text: "Economia",
                                        color: Colors.white,
                                        size: sizeW * .04,
                                      ),
                                      Divider(
                                        color: Colors.deepPurple.shade900,
                                        endIndent: sizeW * .2,
                                        indent: sizeW * .2,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        width: sizeW * .2,
                                        child: U.texto(
                                          text:
                                              """Fuja das taxas abusivas dos marketplaces. Além disso, você não precisa esperar 30 dias para receber o dinheiro das suas vendas.""",
                                          size: textSize(c.maxWidth, max: 20),
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      U.textoFontWeight(
                                        text: "Fidelidade",
                                        color: Colors.white,
                                        size: sizeW * .04,
                                      ),
                                      Divider(
                                        color: Colors.deepPurple.shade900,
                                        endIndent: sizeW * .2,
                                        indent: sizeW * .2,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        width: sizeW * .2,
                                        child: U.texto(
                                          text:
                                              """Clientes fiéis trazem sucesso ao seu negócio. Ofereça suas promoções, cupons de desconto, cartão fidelidade virtual e mantenha seus clientes mais próximos a você.""",
                                          size: textSize(c.maxWidth, max: 20),
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: sizeW * .01,
                                  ),
                                  FadeInImage.memoryNetwork(
                                    width: sizeW * .3,
                                    height: 500,
                                    fit: BoxFit.contain,
                                    fadeInCurve: Curves.slowMiddle,
                                    fadeInDuration: Duration(seconds: 1),
                                    placeholder: tr.kTransparentImage,
                                    image:
                                        "https://firebasestorage.googleapis.com/v0/b/mawi-fa9af.appspot.com/o/06_Fidelidade.png?alt=media&token=75ced6cc-37fb-4fdd-9b14-93baea28b609",
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FadeInImage.memoryNetwork(
                                    width: sizeW * .3,
                                    height: 500,
                                    fit: BoxFit.contain,
                                    fadeInCurve: Curves.slowMiddle,
                                    fadeInDuration: Duration(seconds: 1),
                                    placeholder: tr.kTransparentImage,
                                    image:
                                        "https://firebasestorage.googleapis.com/v0/b/mawi-fa9af.appspot.com/o/07_Independ%CB%86ncia.png?alt=media&token=6130876e-91b0-4eab-9d3f-37a88e363c4d",
                                  ),
                                  SizedBox(
                                    width: sizeW * .01,
                                  ),
                                  Column(
                                    children: [
                                      U.textoFontWeight(
                                        text: "Independência",
                                        color: Colors.white,
                                        size: sizeW * .04,
                                      ),
                                      Divider(
                                        color: Colors.deepPurple.shade900,
                                        endIndent: sizeW * .2,
                                        indent: sizeW * .2,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        width: sizeW * .2,
                                        child: U.texto(
                                          text:
                                              """Autonomia para personalizar seu App, trabalhar sua marca e seu marketing. Tenha as informações dos seus clientes com um canal direto para fidelizá-los.      Lembre-se, o cliente é seu!""",
                                          size: textSize(c.maxWidth, max: 20),
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      U.textoFontWeight(
                                        text: "Eficiência",
                                        color: Colors.white,
                                        size: sizeW * .04,
                                      ),
                                      Divider(
                                        color: Colors.deepPurple.shade900,
                                        endIndent: sizeW * .2,
                                        indent: sizeW * .2,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        width: sizeW * .2,
                                        child: U.texto(
                                          text:
                                              """Com nosso sistema automático e de alta performance você receberá os pedidos em tempo real, sem margem de erro e sem ocupar suas linhas telefônicas.""",
                                          size: textSize(c.maxWidth, max: 20),
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: sizeW * .01,
                                  ),
                                  FadeInImage.memoryNetwork(
                                    width: sizeW * .3,
                                    height: 500,
                                    fit: BoxFit.contain,
                                    fadeInCurve: Curves.slowMiddle,
                                    fadeInDuration: Duration(seconds: 1),
                                    placeholder: tr.kTransparentImage,
                                    image:
                                        "https://firebasestorage.googleapis.com/v0/b/mawi-fa9af.appspot.com/o/05_Efici%CB%86ncia.png?alt=media&token=55c70674-7c4a-46d1-a6d2-091d751b31f9",
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FadeInImage.memoryNetwork(
                                    width: sizeW * .3,
                                    height: 500,
                                    fit: BoxFit.contain,
                                    fadeInCurve: Curves.slowMiddle,
                                    fadeInDuration: Duration(seconds: 1),
                                    placeholder: tr.kTransparentImage,
                                    image:
                                        "https://firebasestorage.googleapis.com/v0/b/mawi-fa9af.appspot.com/o/01_Comodidade.png?alt=media&token=c92f2393-25c7-405b-b031-7b8364bfbf71",
                                  ),
                                  SizedBox(
                                    width: sizeW * .01,
                                  ),
                                  Column(
                                    children: [
                                      U.textoFontWeight(
                                        text: "Comodidade",
                                        color: Colors.white,
                                        size: sizeW * .04,
                                      ),
                                      Divider(
                                        color: Colors.deepPurple.shade900,
                                        endIndent: sizeW * .2,
                                        indent: sizeW * .2,
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                        width: sizeW * .2,
                                        child: U.texto(
                                          text:
                                              """Seus clientes não querem mais falar com ninguém para realizar seus pedidos. 

Ofereça facilidade e benefícios, com o menor número de cliques possíveis: Repetir pedidos, utilizar códigos de desconto, pagamentos online e muito mais.""",
                                          size: textSize(c.maxWidth, max: 20),
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          );
                        }),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Tecnologia(),
                      Contato(_.scrollController),
                      Container(
                        width: sizeW,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                          ),
                          gradient: LinearGradient(
                            colors: [roxo, Colors.deepPurple.shade900],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                          ),
                        ),
                        child: LayoutBuilder(builder: (a, c) {
                          double sizeW = c.maxWidth;
                          return Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: sizeW * .1,
                              ),
                              Icon(
                                Icons.location_on,
                                color: Colors.white,
                                size: textSize(sizeW, max: 30),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: c.maxWidth * .3,
                                child: U
                                    .texto(text: """Centro, Rua Cruz e Souza, 100.
Santa Catarina, SC
89124-000""", color: Colors.white, size: textSize(sizeW, max: 20)),
                              ),
                              SizedBox(
                                width: sizeW * .1,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      /*
                                          InkWell(
                                            child: FaIcon(FontAwesomeIcons.facebook, color: Colors.white, size: textSize(sizeW, max: 30),),
                                            onTap: () {},
                                          ),
                                          SizedBox(width: 10,),
                                          */
                                      InkWell(
                                        child: FaIcon(FontAwesomeIcons.instagram,
                                            color: Colors.white,
                                            size: textSize(sizeW, max: 30)),
                                        onTap: () async {
                                          String number =
                                              "https://www.instagram.com/mawiapps/";
                                          await launch(number);
                                        },
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    width: sizeW * .3,
                                    child: U.texto(
                                        text:
                                            "© 2021 Copyright Todos direitos reservados.",
                                        size: textSize(sizeW, max: 20),
                                        textAlign: TextAlign.center),
                                  )
                                ],
                              ),
                            ],
                          );
                        }),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
