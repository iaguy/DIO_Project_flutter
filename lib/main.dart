import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora IMC',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  get resultado => null;

  set peso(double peso) {}

  set altura(double altura) {}

  @override
  _MyHomePageState createState() => _MyHomePageState();

  void calcularIMC() {}
}

class _MyHomePageState extends State<MyHomePage> {
  double altura = 0.0;
  double peso = 0.0;
  double resultado = 0.0;

  void calcularIMC() {
    if (altura > 0 && peso > 0) {
      setState(() {
        resultado = peso / (altura * altura);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora IMC'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Informe sua altura (em metros):',
            ),
            SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                altura = double.tryParse(value) ?? 0.0;
              },
            ),
            SizedBox(height: 20),
            Text(
              'Informe seu peso (em quilogramas):',
            ),
            SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                peso = double.tryParse(value) ?? 0.0;
              },
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: calcularIMC,
              child: Text('Calcular IMC'),
            ),
            SizedBox(height: 20),
            Text(
              'Seu IMC é: $resultado',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
