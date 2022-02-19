import 'package:flutter/material.dart';
import 'package:flutter_application_1/Page/PageCalcularOr%C3%A7amento/Page02.dart';
import 'package:flutter_application_1/Page/PageConfiguracoes/Page03.dart';
import 'package:flutter_application_1/Page/PageDadoSalvo/Page04.dart';
import 'package:flutter_application_1/Page/PageSobre/Page05.dart';
import 'package:rive/rive.dart';

class Page01 extends StatelessWidget {
  const Page01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final telaAltura = MediaQuery.of(context).size.height;
    final telaLargura = MediaQuery.of(context).size.width;

    //==============================================================================
    //                              Config BTN
    //==============================================================================
    btnArredondado({nomeDoBtn, rotaDirecionada = 'page1'}) {
      return ElevatedButton(
          onPressed: () {
            if (rotaDirecionada == 'page1') {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => Page01()));
            }
            if (rotaDirecionada == 'page2') {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => page02()));
            }
            if (rotaDirecionada == 'page3') {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => page03()));
            }
            if (rotaDirecionada == 'page4') {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => page04()));
            }
            if (rotaDirecionada == 'page5') {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => page05()));
            }
            ;
          },
          child: Text(
            '$nomeDoBtn',
            style: TextStyle(
                color: Colors.black, fontFamily: 'Rock', fontSize: 18),
          ),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
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
              height: telaAltura * 0.25,
              width: telaLargura,
              color: Colors.black,
              child: RiveAnimation.asset(
                'assets/animation1.riv',
                animations: ["normalv2"],
              ),
            ),

            //==============================================================================
            //                          Titulo do app
            //==============================================================================
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: telaLargura * 0.07),
              height: telaAltura * 0.12,
              width: telaLargura,
              //color: Colors.red,
              child: Text(
                'Caculadora \nde orçamento',
                style: (TextStyle(
                    color: Colors.white, fontSize: 23, fontFamily: 'Rock')),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: EdgeInsets.only(left: telaLargura * 0.05),
                height: telaAltura * 0.5,
                width: telaLargura * 0.7,
                child: Column(
                  children: [
                    //==============================================================================
                    //                    btn 1   Calcular Orçamento
                    //==============================================================================
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          margin: EdgeInsets.only(top: telaAltura * 0.02),
                          height: telaAltura * 0.08,
                          width: telaLargura * 0.8,
                          //color: Colors.yellow,

                          child: btnArredondado(
                              nomeDoBtn: 'Calcular Orçamento',
                              rotaDirecionada: 'page2')),
                    ),
                    //==============================================================================
                    //                              btn 2 Dados Salvos
                    //                      Futuro Upgrade
                    //==============================================================================
                    /* Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          margin: EdgeInsets.only(top: telaAltura * 0.02),
                          height: telaAltura * 0.08,
                          width: telaLargura * 0.5,
                          //color: Colors.yellow,

                          child: btnArredondado(
                              nomeDoBtn: 'Dados Salvos',
                              rotaDirecionada: 'page4')),
                    ), */
                    //==============================================================================
                    //                                btn 3  Configurações
                    //                            Futuro Upgrade
                    //==============================================================================
                    /* Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          margin: EdgeInsets.only(top: telaAltura * 0.02),
                          height: telaAltura * 0.08,
                          width: telaLargura * 0.5,
                          //color: Colors.yellow,

                          child: btnArredondado(
                              nomeDoBtn: 'Configurações',
                              rotaDirecionada: 'page3')),
                    ), */
                    //==============================================================================
                    //                                  btn 4  Sobre
                    //==============================================================================
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          margin: EdgeInsets.only(top: telaAltura * 0.02),
                          height: telaAltura * 0.08,
                          width: telaLargura * 0.5,
                          //color: Colors.yellow,

                          child: btnArredondado(
                              nomeDoBtn: 'Sobre', rotaDirecionada: 'page5')),
                    ),
                    //==============================================================================
                  ],
                ),
              ),
            ),
          ]),
        ));
  }
}
