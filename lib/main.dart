import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: WidgetComEstado(),
    ),
  );
} //main

class WidgetComEstado extends StatefulWidget {
  @override
  _WidgetComEstadoState createState() {
    return _WidgetComEstadoState();
  } //_WidgetComEstadoState
} //class

class _WidgetComEstadoState extends State<WidgetComEstado> {
  var _tamanho = 32.0;

  void _aumentar() {
    setState(() {
      _tamanho = _tamanho + 16;
    });
  } //_aumentar

  void _diminuir() {
    setState(() {
      _tamanho = _tamanho - 16;
    });
  } //_diminuir

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FloatingActionButton(
                onPressed: _aumentar,
                child: Icon(Icons.add),
              ),
              FloatingActionButton(
                onPressed: _diminuir,
                child: Icon(Icons.remove),
              )
            ],
          ),
          FlutterLogo(size: _tamanho),
        ],
      ),
    );
  }
} //class
