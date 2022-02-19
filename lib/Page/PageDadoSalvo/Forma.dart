import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Forma(telaAltura, telaLargura,
    {titulo = '', data = '', valor = '', descricao = ''}) {
  return InkWell(
    onTap: () {
      print('ola funcionou');
    },
    child: Container(
      margin: EdgeInsets.only(top: telaAltura * 0.03),
      height: telaAltura * 0.2,
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.1),
          //border: Border.all(color: Colors.red),
          borderRadius: BorderRadius.all(Radius.circular(50))),
      child: Column(children: [
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: telaLargura * 0.08),
          margin: EdgeInsets.only(top: telaAltura * 0.009),
          height: telaAltura * 0.035,
          // color: Colors.red,
          child: Text(
            'Titulo:' + '$titulo',
            maxLines: 1,
            style: TextStyle(fontSize: 22, fontFamily: 'Rock'),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: telaLargura * 0.08),
          margin: EdgeInsets.only(top: telaAltura * 0.009),
          height: telaAltura * 0.035,
          // color: Colors.red,
          child: Text(
            'Data:' + '$data',
            maxLines: 1,
            style: TextStyle(fontSize: 17, fontFamily: 'Rock'),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: telaLargura * 0.08),
          margin: EdgeInsets.only(top: telaAltura * 0.009),
          height: telaAltura * 0.035,
          // color: Colors.red,
          child: Text(
            'Valor:' + 'R\$' + '$valor',
            maxLines: 1,
            style: TextStyle(fontSize: 17, fontFamily: 'Rock'),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: telaLargura * 0.08),
          margin: EdgeInsets.only(top: telaAltura * 0.009),
          height: telaAltura * 0.035,
          // color: Colors.red,
          child: Text(
            'Descrição:' + '$descricao',
            maxLines: 1,
            style: TextStyle(fontSize: 17, fontFamily: 'Rock'),
          ),
        ),
      ]),
    ),
  );
}
