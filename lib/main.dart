import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculadora'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(vertical: 24.0),
                child: Text(
                  '0',
                  style: TextStyle(fontSize: 48.0), 
                ),
              ),
              // Fila 1
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1, 
                      child: buildButton('%'),
                    ),
                    Expanded(
                      flex: 1, 
                      child: buildButton('CE'),
                    ),
                    Expanded(
                      flex: 1, 
                      child: buildButton('⌫'),
                    ),
                    Expanded(
                      flex: 1, 
                      child: buildButton('/'),
                    ),
                  ],
                ),
              ),
              // Fila 2
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: buildButton('7'),
                    ),
                    Expanded(
                      flex: 1,
                      child: buildButton('8'),
                    ),
                    Expanded(
                      flex: 1,
                      child: buildButton('9'),
                    ),
                    Expanded(
                      flex: 1,
                      child: buildButton('X'),
                    ),
                  ],
                ),
              ),
              // Fila 3
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: buildButton('4'),
                    ),
                    Expanded(
                      flex: 1,
                      child: buildButton('5'),
                    ),
                    Expanded(
                      flex: 1,
                      child: buildButton('6'),
                    ),
                    Expanded(
                      flex: 1,
                      child: buildButton('-'),
                    ),
                  ],
                ),
              ),
              // Fila 4
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: buildButton('1'),
                    ),
                    Expanded(
                      flex: 1,
                      child: buildButton('2'),
                    ),
                    Expanded(
                      flex: 1,
                      child: buildButton('3'),
                    ),
                    Expanded(
                      flex: 1,
                      child: buildButton('+'),
                    ),
                  ],
                ),
              ),
              // Fila 5
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: buildButton('+/-'),
                    ),
                    Expanded(
                      flex: 1,
                      child: buildButton('0'),
                    ),
                    Expanded(
                      flex: 1,
                      child: buildButton('.'),
                    ),
                    Expanded(
                      flex: 1,
                      child: buildButton('='),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Método para crear un botón con el texto dado
  Widget buildButton(String text) {
  return Container(
    padding: EdgeInsets.all(20.0),
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 27, 212, 42),
      border: Border.all(
        color: Colors.black,
        width: 1.0,
      ),
    ),
    child: Center(
      child: Text(
        text,
        style: TextStyle(color: Colors.black),
      ),
    ),
  );
}
}