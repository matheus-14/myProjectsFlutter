import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'cnpj.dart';
import 'cnpj_brasilapi.dart';
import 'cnpj_receitaws.dart';

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
  CNPJ? cnpjData;

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
            Text('Insira o CNPJ:', style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            TextField(
              onChanged: (value) {
                setState(() {
                  cnpjInput = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'Digite o CNPJ',
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
        final data = await CNPJBrasilAPI.consultarCNPJ(cnpjInput);
        setState(() {
          cnpjData = data;
        });
      } else if (selectedAPI == 'ReceitaWS') {
        final data = await CNPJReceitaWS.consultarCNPJ(cnpjInput);
        setState(() {
          cnpjData = data;
        });
      }
    } catch (e) {
      setState(() {
        cnpjData = null;
      });
      // Trate a exceção de forma apropriada, exibindo uma mensagem de erro ao usuário, por exemplo.
      print('Erro ao consultar CNPJ: $e');
    }
  }
}
