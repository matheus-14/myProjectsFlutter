import 'dart:convert';
import 'package:http/http.dart' as http;

import 'cnpj.dart';

class CNPJReceitaWS {
  static Future<CNPJ> consultarCNPJ(String cnpj) async {

    final url = Uri.parse('https://receitaws.com.br/v1/cnpj/{cnpj}');

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      return CNPJ(data['cnpj']);
    } else {
      throw Exception('Falha ao consultar CNPJ na ReceitaWS');
    }
  }
}
