import 'package:flutter/material.dart';
import 'package:flutter_application_1/Page/PageDadoSalvo/Forma.dart';
import 'package:rive/rive.dart';

class page07 extends StatefulWidget {
  const page07({Key? key}) : super(key: key);

  @override
  _page07State createState() => _page07State();
}

class _page07State extends State<page07> {
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

    final textRiveLisence = '''MIT License

Copyright (c) 2020 Rive

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.''';

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
                      //height: telaAltura * 0.8,
                      width: telaAltura,
                      //color: Colors.yellow,
                      child: Text(textRiveLisence),
                      // /color: Colors.red,
                    ),
                  ],
                ),
                //==============================================================================
              ),
            ),
          ]),
        ));
  }
}

class page08 extends StatefulWidget {
  const page08({Key? key}) : super(key: key);

  @override
  _page08State createState() => _page08State();
}

class _page08State extends State<page08> {
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

    final textRiveLisence =
        '''Copyright 2013 The Flutter Authors. All rights reserved.

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above
      copyright notice, this list of conditions and the following
      disclaimer in the documentation and/or other materials provided
      with the distribution.
    * Neither the name of Google Inc. nor the names of its
      contributors may be used to endorse or promote products derived
      from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR
ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.''';

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
                      //height: telaAltura * 0.8,
                      width: telaAltura,
                      //color: Colors.yellow,
                      child: Text(textRiveLisence),
                      // /color: Colors.red,
                    ),
                  ],
                ),
                //==============================================================================
              ),
            ),
          ]),
        ));
  }
}
