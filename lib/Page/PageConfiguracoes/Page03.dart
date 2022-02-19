import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class page03 extends StatefulWidget {
  const page03({Key? key}) : super(key: key);

  @override
  _page03State createState() => _page03State();
}

class _page03State extends State<page03> {
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
        backgroundColor: Color(0xffFF5D54),
        body: SafeArea(
          child: Column(children: [
            Container(
                height: telaAltura * 0.2,
                width: telaLargura,
                color: Color(0xff526FB9),
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
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(top: telaLargura * 0.05),
                      width: telaLargura * 0.5,
                      //color: Colors.blue,
                      child: Text(
                        'Configurações',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
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
                      child: RiveAnimation.asset(
                        'assets/engrenage.riv',
                        animations: ["normal"],
                      ),
                    )
                  ],
                )),
            //==============================================================================
            //                mainScro
            //==============================================================================
            SingleChildScrollView(
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  // /color: Colors.blue,
                  padding: EdgeInsets.only(top: telaAltura * 0.05),
                  height: telaAltura * 0.72,
                  width: telaLargura,
                  child: Column(
                    children: [
                      //==============================================================================
                      //==============================================================================
                      //                               Cotnainer 1
                      //                     BTN Excluir historico salvo
                      //==============================================================================
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: EdgeInsets.only(
                              top: telaAltura * 0.03, left: telaLargura * 0.03),
                          height: telaAltura * 0.07,
                          width: telaLargura * 0.7,
                          //color: Colors.yellow,
                          child: btnArredondado(
                              nomeDoBtn: 'Excluir historico salvo',
                              colorBTN: Colors.white,
                              styleSizeFontBTN: 15.0),
                        ),
                      ),

                      //==============================================================================
                      //==============================================================================
                      //                               Cotnainer 2
                      //                     BTN Adicionar dados de Filamento
                      //==============================================================================
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: EdgeInsets.only(
                              top: telaAltura * 0.04, left: telaLargura * 0.03),
                          height: telaAltura * 0.07,
                          width: telaLargura * 0.7,
                          //color: Colors.yellow,
                          child: btnArredondado(
                              nomeDoBtn: 'Adicionar dados de Filamento',
                              colorBTN: Colors.white,
                              styleSizeFontBTN: 15.0),
                        ),
                      ),

                      //==============================================================================
                      //==============================================================================
                      //                               Cotnainer 3
                      //                     BTN Resetar configurações
                      //==============================================================================
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: EdgeInsets.only(
                              top: telaAltura * 0.04, left: telaLargura * 0.03),
                          height: telaAltura * 0.07,
                          width: telaLargura * 0.7,
                          //color: Colors.yellow,
                          child: btnArredondado(
                              nomeDoBtn: 'Resetar configurações ',
                              colorBTN: Colors.white,
                              styleSizeFontBTN: 15.0),
                        ),
                      ),

                      //==============================================================================
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ));
  }
}
