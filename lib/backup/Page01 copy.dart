import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class Page01 extends StatelessWidget {
  const Page01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final telaAltura = MediaQuery.of(context).size.height;
    final telaLargura = MediaQuery.of(context).size.width;

    btnArredondado({nomeDoBtn}) {
      return ElevatedButton(
          onPressed: () {},
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

    return Scaffold(
        backgroundColor: Color(0xffFF5D54),
        body: SafeArea(
          child: Column(children: [
            Container(
                height: telaAltura * 0.25,
                width: telaLargura,
                color: Colors.black,
                child: Row(
                  children: [
                    //========================================================================
                    //    Espaço de margem
                    Padding(padding: EdgeInsets.only(left: telaLargura * 0.1)),
                    //========================================================================
                    //                  Card  titulo Bem vindo
                    //========================================================================
                    Container(
                      alignment: Alignment.bottomLeft,
                      padding: EdgeInsets.only(bottom: telaLargura * 0.1),
                      width: telaLargura * 0.5,
                      //color: Colors.blue,
                      child: Text(
                        'Seja Bem Vindo\ndesfrute do \nmelhor App',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontFamily: 'Rock'),
                      ),
                    ),
                    //========================================================================
                    //                        img de animação
                    //========================================================================
                    Container(
                      width: telaLargura * (0.5 - 0.1),
                      //color: Colors.red,
                      child: RiveAnimation.asset(
                        'assets/animation1.riv',
                        animations: ["normalv2"],
                      ),

                      /*  Row(children: [
                        //========================================================================
                        //                    Animação
                        //========================================================================
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            margin: EdgeInsets.only(bottom: telaAltura * 0.06),
                            height: telaAltura * 0.05,
                            width: telaAltura * 0.05,
                            color: Colors.white,
                          ),
                        ),
                        //========================================================================
                       
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            margin: EdgeInsets.only(bottom: telaAltura * 0.06),
                            height: telaAltura * 0.09,
                            width: telaAltura * 0.05,
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            margin: EdgeInsets.only(bottom: telaAltura * 0.06),
                            height: telaAltura * 0.14,
                            width: telaAltura * 0.05,
                            color: Color(0xff6A90F0),
                          ),
                        ),
                      ]), */
                      //color: Colors.yellow,
                    )
                  ],
                )),

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

                          child: btnArredondado(nomeDoBtn: 'Calcular Orçamento')
                          //==============================================================================
                          //                                    btn 2 Dados Salvos
                          //==============================================================================
                          ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          margin: EdgeInsets.only(top: telaAltura * 0.02),
                          height: telaAltura * 0.08,
                          width: telaLargura * 0.5,
                          //color: Colors.yellow,

                          child: btnArredondado(nomeDoBtn: 'Dados Salvos')),
                    ),
                    //==============================================================================
                    //                                btn 3  Configurações
                    //==============================================================================
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          margin: EdgeInsets.only(top: telaAltura * 0.02),
                          height: telaAltura * 0.08,
                          width: telaLargura * 0.5,
                          //color: Colors.yellow,

                          child: btnArredondado(nomeDoBtn: 'Configurações')),
                    ),
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

                          child: btnArredondado(nomeDoBtn: 'Sobre')),
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
