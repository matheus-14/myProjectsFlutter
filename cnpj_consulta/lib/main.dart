import 'package:flutter/material.dart';
//import 'package:dio/dio.dart';
//import 'cnpj.dart';
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
  String selectedAPI = 'BrasilAPI'; // Valor padrão
  String cnpjInput = '';
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
            Text('Insira o Cnpj:', style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            TextField(
              onChanged: (value) {
                setState(() {
                  cnpjInput = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'Digite o Cnpj',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            DropdownButton<String>(
              value: selectedAPI,
              items: ['BrasilAPI', 'ReceitaWS']
                  .map((api) => DropdownMenuItem<String>(
                        value: api,
                        child: Text(api),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  selectedAPI = value!;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _consultarCNPJ();
              },
              child: Text('Consultar'),
            ),
            SizedBox(height: 20),
            if (cnpjData != null)
              Text('CNPJ consultado: ${cnpjData!.cnpj}'),
          ],
        ),
      ),
    );
  }

 Future<void> _consultarCNPJ() async {
    try {
      if (selectedAPI == 'BrasilAPI') {
        final cnpjbrasil = await CNPJBrasilAPI.consultarCNPJ(cnpjInput);
        setState(() {
          cnpjData = cnpjbrasil;
        });
      } else if (selectedAPI == 'ReceitaWS') {
        final cnpjReceita = await CNPJReceitaWS.consultarCNPJ(cnpjInput);
        setState(() {
          cnpjData = cnpjReceita;
        });
      }
    } catch (e) {
      setState(() {
        cnpjData = null;
      });

        // Tratar quando não for possivel consultar - talvez snackbar
    }
  }
}
