import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';

import 'cnpj.dart';

part 'CNPJReceitaWS.g.dart';

@JsonSerializable(explicitToJson: true)

//-----------------------------
class AtividadePrincipal {
      String? code;
      String? text;

      AtividadePrincipal({this.code, this.text});

      AtividadePrincipal.fromJson(Map<String, dynamic> json) {
        code = json['code'];
        text = json['text'];
      }

      Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['code'] = this.code;
        data['text'] = this.text;
        return data;
      }
    }

  class AtividadesSecundarias {
  String? code;
  String? text;

  AtividadesSecundarias({this.code, this.text});

  AtividadesSecundarias.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['text'] = this.text;
    return data;
  }
}

    class Qsa {
      String? nome;
      String? qual;
      String? paisOrigem;
      String? nomeRepLegal;
      String? qualRepLegal;

      Qsa(
          {this.nome,
          this.qual,
          this.paisOrigem,
          this.nomeRepLegal,
          this.qualRepLegal});

      Qsa.fromJson(Map<String, dynamic> json) {
        nome = json['nome'];
        qual = json['qual'];
        paisOrigem = json['pais_origem'];
        nomeRepLegal = json['nome_rep_legal'];
        qualRepLegal = json['qual_rep_legal'];
      }

      Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['nome'] = this.nome;
        data['qual'] = this.qual;
        data['pais_origem'] = this.paisOrigem;
        data['nome_rep_legal'] = this.nomeRepLegal;
        data['qual_rep_legal'] = this.qualRepLegal;
        return data;
      }
    }

    class Billing {
      bool? free;
      bool? database;

      Billing({this.free, this.database});

      Billing.fromJson(Map<String, dynamic> json) {
        free = json['free'];
        database = json['database'];
      }

      Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['free'] = this.free;
        data['database'] = this.database;
        return data;
      }
    }
//-----------------------------


class CNPJReceitaWS {
  String? status;
  String? ultimaAtualizacao;
  String? cnpj;
  String? tipo;
  String? porte;
  String? nome;
  String? fantasia;
  String? abertura;
  List<AtividadePrincipal>? atividadePrincipal;
  List<AtividadesSecundarias>? atividadesSecundarias;
  String? naturezaJuridica;
  String? logradouro;
  String? numero;
  String? complemento;
  String? cep;
  String? bairro;
  String? municipio;
  String? uf;
  String? email;
  String? telefone;
  String? efr;
  String? situacao;
  String? dataSituacao;
  String? motivoSituacao;
  String? situacaoEspecial;
  String? dataSituacaoEspecial;
  String? capitalSocial;
  List<Qsa>? qsa;
  List<Billing>? billing;

  CNPJReceitaWS({
      this.status = "",
      this.ultimaAtualizacao = "",
      this.cnpj = "",
      this.tipo = "",
      this.porte = "",
      this.nome = "",
      this.fantasia = "",
      this.abertura = "",
      this.atividadePrincipal,
      this.atividadesSecundarias,
      this.naturezaJuridica = "",
      this.logradouro = "",
      this.numero = "",
      this.complemento = "",
      this.cep = "",
      this.bairro = "",
      this.municipio = "",
      this.uf = "",
      this.email = "",
      this.telefone = "",
      this.efr = "",
      this.situacao = "",
      this.dataSituacao = "",
      this.motivoSituacao = "",
      this.situacaoEspecial = "",
      this.dataSituacaoEspecial = "",
      this.capitalSocial = "",
      this.qsa,
      this.billing});

  CNPJReceitaWS copyWith({
    String? status,
    String? ultimaAtualizacao,
    String? cnpj,
    String? tipo,
    String? porte,
    String? nome,
    String? fantasia,
    String? abertura,
    List<AtividadePrincipal>? atividadePrincipal,
    List<AtividadesSecundarias>? atividadesSecundarias,
    String? naturezaJuridica,
    String? logradouro,
    String? numero,
    String? complemento,
    String? cep,
    String? bairro,
    String? municipio,
    String? uf,
    String? email,
    String? telefone,
    String? efr,
    String? situacao,
    String? dataSituacao,
    String? motivoSituacao,
    String? situacaoEspecial,
    String? dataSituacaoEspecial,
    String? capitalSocial,
    List<Qsa>? qsa,
    List<Billing>? billing,
  }) {
    return CNPJReceitaWS(
      status: status ?? this.status,
      ultimaAtualizacao: ultimaAtualizacao ?? this.ultimaAtualizacao,
      cnpj: cnpj ?? this.cnpj,
      tipo: tipo ?? this.tipo,
      porte: porte ?? this.porte,
      nome: nome ?? this.nome,
      fantasia: fantasia ?? this.fantasia,
      abertura: abertura ?? this.abertura,
      atividadePrincipal: atividadePrincipal ?? this.atividadePrincipal,
      atividadesSecundarias: atividadesSecundarias ?? this.atividadesSecundarias,
      naturezaJuridica: naturezaJuridica ?? this.naturezaJuridica,
      logradouro: logradouro ?? this.logradouro,
      numero: numero ?? this.numero,
      complemento: complemento ?? this.complemento,
      cep: cep ?? this.cep,
      bairro: bairro ?? this.bairro,
      municipio: municipio ?? this.municipio,
      uf: uf ?? this.uf,
      email: email ?? this.email,
      telefone: telefone ?? this.telefone,
      efr: efr ?? this.efr,
      situacao: situacao ?? this.situacao,
      dataSituacao: dataSituacao ?? this.dataSituacao,
      motivoSituacao: motivoSituacao ?? this.motivoSituacao,
      situacaoEspecial: situacaoEspecial ?? this.situacaoEspecial,
      dataSituacaoEspecial: dataSituacaoEspecial ?? this.dataSituacaoEspecial,
      capitalSocial: capitalSocial ?? this.capitalSocial,
      qsa: qsa ?? this.qsa,
      billing: billing ?? this.billing,
    );
  }

  factory CNPJReceitaWS.fromJson(Map<String, dynamic> json) => _$CNPJReceitaWSFromJson(json);
  Map<String, dynamic> toJson() => _$CNPJReceitaWSToJson(this);

  factory CNPJReceitaWS.fromJsonString(String jsonS) => CNPJReceitaWS.fromJson(jsonDecode(jsonS));
  String toJsonString() => jsonEncode(_$CNPJReceitaWSToJson(this));

  static List<CNPJReceitaWS> lCNPJReceitaWSFromJson(String str) => List<CNPJReceitaWS>.from(jsonDecode(str).map((x) => CNPJReceitaWS.fromJson(x)));
  static List<CNPJReceitaWS> lCNPJReceitaWSFromMap(List<Map<String, Object?>> lMap) => lMap.map((x) => CNPJReceitaWS.fromJson(x)).toList();

  static String lCNPJReceitaWSToJson(List<CNPJReceitaWS> data) => jsonEncode(List<dynamic>.from(data.map((x) => x.toJson())), toEncodable: FJson.dataHoraSeralizer);

 
  static Future<CNPJReceitaWS> consultarCNPJ(String cnpj) async {

    final url = Uri.parse("https://receitaws.com.br/v1/cnpj/{cnpj.trim().replaceAll('.', '').replaceAll('-', '').replaceAll('/', '')}");

    final response = await http.get(url);

    if (response.statusCode == 200) {
      CNPJReceitaWS cnpjReceita = CNPJReceitaWS.fromJsonString(response.body);
      return cnpjReceita;
    } else {
      throw Exception('Aconteceu uma falha ao consultar o Cnpj na ReceitaWS.');
    }
  }
 

}