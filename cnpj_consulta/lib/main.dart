import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'cnpj_normal.dart';
import 'cnpj_brasilapi.dart';
import 'cnpj_receitaws.dart';

//import 'package:fluttertoast/fluttertoast.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String selecionadaAPI = 'BrasilAPI'; // Valor padrão
  String cnpjEntrada = '';
  dynamic cnpjData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: const Text('Consulta CNPJ'),
        backgroundColor: const Color.fromARGB(255, 90, 164, 224),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Insira o Cnpj:', style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            TextField(
              onChanged: (value) {
                setState(() {
                  cnpjEntrada = value;
                });
              },
              decoration: const InputDecoration(
                hintText: 'Digite o Cnpj',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            DropdownButton<String>(
              value: selecionadaAPI,
              items: ['BrasilAPI', 'ReceitaWS']
                  .map((api) => DropdownMenuItem<String>(
                        value: api,
                        child: Text(api),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  selecionadaAPI = value!;
                });
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _consultarCNPJ();
              },
              child: const Text('Consultar'),
            ),
            const SizedBox(height: 20),
            if (cnpjData != null)
              Text('CNPJ consultado: ${cnpjData!.cnpj}'),
          ],
        ),
      ),
    );
  }

 Future<void> _consultarCNPJ() async {
    try {
      debugger();
      if (selecionadaAPI == 'BrasilAPI') {
        final cnpjbrasil = await CNPJBrasilAPI.consultarCNPJ(cnpjEntrada);
        setState(() {
          cnpjData = cnpjbrasil;
        });
      } else if (selecionadaAPI == 'ReceitaWS') {
        final cnpjReceita = await CNPJReceitaWS.consultarCNPJ(cnpjEntrada);
        setState(() {
          cnpjData = cnpjReceita;
        });
      }
    } catch (e) {
      setState(() {
        cnpjData = null;
      });

        // Tratar 
    }
  }
}
