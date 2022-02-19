import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';

class page02 extends StatefulWidget {
  const page02({Key? key}) : super(key: key);

  @override
  _page02State createState() => _page02State();
}

class _page02State extends State<page02> {
  TextEditingController controllervalorKgFilamento = TextEditingController();
  TextEditingController controllerqtdGrama = TextEditingController();
  TextEditingController controllermargemLucro = TextEditingController();
  double resultado = 0.0;
  //double resultado2 = 0.0;
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
        styleColorFontBTN = Colors.black,
        funcao}) {
      return ElevatedButton(
          onPressed: () {
            setState(() {
              double vkgFilamento =
                  double.parse(controllervalorKgFilamento.text);
              double qtdGrama = double.parse(controllerqtdGrama.text);
              double margemDeLucro = double.parse(controllermargemLucro.text);

              resultado = (vkgFilamento / 1000) * qtdGrama;
              double resultado2 = margemDeLucro * (resultado / 100.0);
              print(resultado);
              resultado = resultado2 + resultado;
              print('R\$: $resultado');
            });
          },
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
          child: SingleChildScrollView(
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
                      Padding(
                          padding: EdgeInsets.only(left: telaLargura * 0.1)),
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
                          'Calculadora de orçamento',
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
                        child: RiveAnimation.asset(
                          'assets/filamento.riv',
                        ),
                      )
                    ],
                  )),
              //==============================================================================
              //
              //==============================================================================
              Container(
                height: telaAltura * 0.72,
                width: telaLargura,
                child: Column(
                  children: [
                    //==============================================================================
                    //==============================================================================
                    //                               Cotnainer 1
                    //                     BTN selecionar filamento salvo
                    //              Futuro Upgrade
                    //==============================================================================
                    /* Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        margin: EdgeInsets.only(
                            top: telaAltura * 0.02, left: telaLargura * 0.1),
                        height: telaAltura * 0.05,
                        width: telaLargura * 0.7,
                        //color: Colors.yellow,
                        child: btnArredondado(
                            nomeDoBtn: 'Selecionar filamento salvo',
                            colorBTN: Colors.white.withOpacity(0.3),
                            styleSizeFontBTN: 15.0),
                      ),
                    ), */
                    //==============================================================================
                    //==============================================================================
                    //                             Container 2
                    //                            Text >> valor de 1KG filamento
                    //==============================================================================
                    Align(
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(
                            top: telaAltura * 0.01, left: telaLargura * 0.05),
                        height: telaAltura * 0.05,
                        width: telaLargura * 0.8,
                        //color: Colors.red,
                        child: Text(
                          'Valor de 1KG de filamento',
                          style: TextStyle(
                              fontFamily: 'Rock', fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    //==============================================================================
                    //==============================================================================
                    //                            Container 3
                    //                             TextField
                    //==============================================================================
                    Align(
                      //alignment: Alignment.centerLeft,
                      child: Container(
                        margin: EdgeInsets.only(top: telaAltura * 0.01),
                        height: telaAltura * 0.06,
                        width: telaLargura * 0.8,
                        //color: Colors.yellow,
                        child: TextField(
                          //============================================================
                          //                Controller Text
                          //============================================================
                          controller: controllervalorKgFilamento,
                          //============================================================
                          //               Regra de negocios
                          //============================================================
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.allow(
                                RegExp(r'[0-9.]')),
                          ],
                          keyboardType: TextInputType.number,
                          //============================================================
                          //textAlign: TextAlign(),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(20.0)),
                              labelText: '\t\tR\$ '),
                        ),

                        //child: btnArredondado(nomeDoBtn: 'Configurações'),
                      ),
                    ),
                    //==============================================================================
                    //==============================================================================
                    //                                Container 4
                    //                      Text Quantas gramas tem a peça impressa
                    //==============================================================================
                    Align(
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(
                            top: telaAltura * 0.02, left: telaLargura * 0.05),
                        height: telaAltura * 0.035,
                        width: telaLargura * 0.8,
                        //color: Colors.red,
                        child: Text(
                          'Quantas gramas tem a peça impressa',
                          style: TextStyle(
                              fontFamily: 'Rock', fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    //==============================================================================
                    //==============================================================================
                    //                          Container 5
                    //                            TextField
                    //==============================================================================
                    Align(
                      //alignment: Alignment.centerLeft,
                      child: Container(
                        margin: EdgeInsets.only(top: telaAltura * 0.01),
                        height: telaAltura * 0.06,
                        width: telaLargura * 0.8,
                        //color: Colors.yellow,
                        child: TextField(
                          controller: controllerqtdGrama,
                          //============================================================
                          //               Regra de negocios
                          //============================================================
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          ],
                          keyboardType: TextInputType.number,
                          //============================================================
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(20.0)),
                              labelText: '\t\tg'),
                        ),

                        //child: btnArredondado(nomeDoBtn: 'Configurações'),
                      ),
                    ),
                    //==============================================================================
                    //==============================================================================
                    //                                  Container 6
                    //                              Text Magem de lucro
                    //==============================================================================
                    Align(
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(
                            top: telaAltura * 0.01, left: telaLargura * 0.05),
                        height: telaAltura * 0.05,
                        width: telaLargura * 0.8,
                        //color: Colors.red,
                        child: Text(
                          'Magem de lucro',
                          style: TextStyle(
                              fontFamily: 'Rock', fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    //==============================================================================
                    //==============================================================================
                    //                              Container 7
                    //                              TextField
                    //==============================================================================
                    Align(
                      //alignment: Alignment.centerLeft,
                      child: Container(
                        margin: EdgeInsets.only(top: telaAltura * 0.01),
                        height: telaAltura * 0.08,
                        width: telaLargura * 0.8,
                        //color: Colors.yellow,
                        child: TextField(
                          controller: controllermargemLucro,
                          //============================================================
                          //               Regra de negocios
                          //============================================================
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.allow(
                                RegExp(r'[0-9.]')),
                          ],
                          keyboardType: TextInputType.number,
                          maxLength: 3,
                          //============================================================
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(20.0)),
                              labelText: '\t\tPorcentagem de 0% a 100%'),
                        ),

                        //child: btnArredondado(nomeDoBtn: 'Configurações'),
                      ),
                    ),
                    //==============================================================================
                    //                              Container 8
                    //                              Text Resultado
                    //==============================================================================
                    Align(
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(
                            top: telaAltura * 0.01, left: telaLargura * 0.05),
                        height: telaAltura * 0.05,
                        width: telaLargura * 0.8,
                        //color: Colors.red,
                        child: Text(
                          'Resultado: ' + '$resultado',
                          style: TextStyle(
                              fontFamily: 'Rock', fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    //==============================================================================
                    //==============================================================================
                    //                              Container 9
                    //                              btn 4 Calcular Orçamento
                    //==============================================================================
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        margin: EdgeInsets.only(top: telaAltura * 0.02),
                        height: telaAltura * 0.08,
                        width: telaLargura * 0.8,
                        //color: Colors.red,
                        child: btnArredondado(
                          nomeDoBtn: 'Calcular orçamento',
                          colorBTN: Color(0xffFF5D54),
                          styleColorFontBTN: Colors.white,
                        ),

                        //child: btnArredondado(nomeDoBtn: 'Sobre'),
                      ),
                    ),
                    //==============================================================================
                  ],
                ),
              ),
            ]),
          ),
        ));
  }
}
