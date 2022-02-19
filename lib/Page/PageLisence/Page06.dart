import 'package:flutter/material.dart';
import 'package:flutter_application_1/Page/PageDadoSalvo/Forma.dart';
import 'package:flutter_application_1/Page/PageLisence/pagelicen%C3%A7as/Page07.dart';
import 'package:rive/rive.dart';

class page06 extends StatefulWidget {
  const page06({Key? key}) : super(key: key);

  @override
  _page06State createState() => _page06State();
}

class _page06State extends State<page06> {
  @override
  Widget build(BuildContext context) {
    final telaAltura = MediaQuery.of(context).size.height;
    final telaLargura = MediaQuery.of(context).size.width;

    //==============================================================================
    //                      btnArredondado
    //==============================================================================
    btnArredondado(
        {nomeDoBtn = '',
        colorBTN = Colors.white,
        styleSizeFontBTN = 18.0,
        styleColorFontBTN = Colors.black}) {
      return ElevatedButton(
          onPressed: () {},
          child: Text(
            '$nomeDoBtn',
            style: TextStyle(
                color: styleColorFontBTN,
                fontFamily: 'Rock',
                fontSize: styleSizeFontBTN),
          ),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(colorBTN),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ))));
    }

    //==============================================================================
    //==============================================================================

    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(children: [
            Container(
                height: telaAltura * 0.2,
                width: telaLargura,
                color: Color(0xffFF5D54),
                child: Row(
                  children: [
                    //==============================================================================
                    //========================================================================
                    //    Espaço de margem
                    Padding(padding: EdgeInsets.only(left: telaLargura * 0.1)),
                    //==============================================================================
                    //========================================================================
                    //                  Card  titulo Calculadora de Orçamento
                    //========================================================================
                    Container(
                      alignment: Alignment.bottomCenter,
                      padding: EdgeInsets.only(bottom: telaAltura * 0.05),
                      width: telaLargura * 0.5,
                      //color: Colors.blue,
                      child: Text(
                        'Licença',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontFamily: 'Rock'),
                      ),
                    ),
                    //==============================================================================
                    //==============================================================================
                    //                        img de animação
                    //                Desativado
                    //==============================================================================
                    Container(
                      width: telaLargura * (0.4 - 0.1),
                      child: RiveAnimation.asset(
                        'assets/IconStatic.riv',
                      ),
                      //color: Colors.yellow,
                    )
                  ],
                )),
            //==============================================================================
            //                mainScro
            //==============================================================================
            Container(
              height: telaAltura * 0.72,
              width: telaLargura * 0.9,
              //color: Colors.yellow,
              child: SingleChildScrollView(
                child: Column(
                  //==============================================================================
                  //                           dados AQUI
                  //==============================================================================
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: telaAltura * 0.02),
                      height: telaAltura * 0.1,
                      width: telaAltura,
                      // /color: Colors.red,
                      child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => page07()));
                          },
                          child: Text(
                            'rive 0.8.1',
                            style: TextStyle(
                                color: Colors.white, fontFamily: 'Rock'),
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xffFF5D54)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              )))),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: telaAltura * 0.02),
                      height: telaAltura * 0.1,
                      width: telaAltura,
                      // /color: Colors.red,
                      child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => page08()));
                          },
                          child: Text(
                            'flutter_lints 1.0.0',
                            style: TextStyle(
                                color: Colors.white, fontFamily: 'Rock'),
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xffFF5D54)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              )))),
                    )
                  ],
                ),
                //==============================================================================
              ),
            ),
          ]),
        ));
  }
}
