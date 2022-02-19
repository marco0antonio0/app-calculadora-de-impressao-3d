import 'package:flutter/material.dart';
import 'package:flutter_application_1/Page/PageDadoSalvo/Forma.dart';
import 'package:rive/rive.dart';

class page04 extends StatefulWidget {
  const page04({Key? key}) : super(key: key);

  @override
  _page04State createState() => _page04State();
}

class _page04State extends State<page04> {
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
                      alignment: Alignment.bottomLeft,
                      padding: EdgeInsets.only(bottom: telaLargura * 0.05),
                      width: telaLargura * 0.5,
                      //color: Colors.blue,
                      child: Text(
                        'Dados Salvos',
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
                      width: telaLargura * (0.5 - 0.1),
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
                    Forma(telaAltura, telaLargura),
                    Forma(telaAltura, telaLargura)
                  ],
                ),
                //==============================================================================
              ),
            ),
          ]),
        ));
  }
}
