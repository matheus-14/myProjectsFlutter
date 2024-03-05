// ignore_for_file: unused_catch_stack

import 'dart:developer';

import 'package:flutter/material.dart';
//import 'cnpj_brasilapi.dart';
//import 'cnpj_receitaws.dart';
import 'MCnpj.dart';

//import 'package:fluttertoast/fluttertoast.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String selecionadaAPI = 'ReceitaWS'; // Valor padrão
  String cnpjEntrada = '';
  int? days;
  String? token = ""; 
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
              maxLines: 1, 
              maxLength: 18, 
            ),

            const SizedBox(height: 10),
            TextField(
              onChanged: (value) {
                setState(() {
                  days = int.tryParse(value);
                });
              },
              decoration: const InputDecoration(
                hintText: 'Digite o Days (Caso API Comercial na ReceitaWs)',
                border: OutlineInputBorder(),
              ),
              maxLines: 1, 
              maxLength: 3, 
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

      cnpjEntrada = "03637885000122";
      days = 20;


    if (days != null) { // Receitaws(API Comercial)
      token = "9c6bde7c95d6c05ec2225a24d53b286f38b962248c2ef76763f9b4b3a2200da4"; //Teste1
      //token = "5dd5f29948f4f6fd7add087655145ff5a641fb48aafdad72b245ca6de0c7dab4";  //Teste29/02
      final cnpjData = await CNPJNormal.consultarCNPJ(selecionadaAPI, cnpjEntrada, days!, token!);

      setState(() {
        this.cnpjData = cnpjData;
      });
    }else{  // Receitaws(API Publica) OU BrasilAPI
      days = -1;
      final cnpjData = await CNPJNormal.consultarCNPJ(selecionadaAPI, cnpjEntrada, days!, token!);
      
      setState(() {
        this.cnpjData = cnpjData;
      });
    }

    } catch (e, stackTrace) {
      setState(() {
        cnpjData = null;
      });
    }
  }
}



