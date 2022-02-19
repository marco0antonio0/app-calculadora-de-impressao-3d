import 'package:flutter/material.dart';
import 'package:flutter_application_1/Page/PageDadoSalvo/Forma.dart';
import 'package:flutter_application_1/Page/PageLisence/Page06.dart';
import 'package:rive/rive.dart';

class page05 extends StatefulWidget {
  const page05({Key? key}) : super(key: key);

  @override
  _page05State createState() => _page05State();
}

class _page05State extends State<page05> {
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
                        'Sobre',
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
                      height: telaAltura * 0.5,
                      width: telaLargura,
                      //color: Colors.yellow,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.08),
                          borderRadius:
                              BorderRadius.all(Radius.circular(25.0))),
                      child: Column(children: [
                        Container(
                          margin: EdgeInsets.only(top: telaAltura * 0.05),
                          height: telaAltura * 0.2,
                          decoration: BoxDecoration(
                              color: Colors.red, shape: BoxShape.circle),
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(top: telaAltura * 0),
                          height: telaAltura * 0.08,
                          //color: Colors.yellow,
                          child: Text(
                            'Dev.',
                            style: TextStyle(fontFamily: 'Rock', fontSize: 20),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          margin: EdgeInsets.only(top: telaAltura * 0),
                          height: telaAltura * 0.17,
                          width: telaLargura,
                          //color: Colors.blue,
                          child: Text(
                            '''Aplicativo desenvolvido sobre a facilidadede de simular orçamentos para peças vindo de impressão 3D.''' +
                                '''\nRedes Sociais\n Instagram @dev_mobile_de_batata ''',
                            style: TextStyle(fontFamily: 'Rock', fontSize: 17),
                          ),
                        ),
                      ]),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: telaAltura * 0.02),
                      height: telaAltura * 0.1,
                      width: telaAltura,
                      // /color: Colors.red,
                      child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => page06()));
                          },
                          child: Text(
                            'About License',
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
