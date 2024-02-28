// ignore_for_file: non_constant_identifier_names, avoid_print, unused_local_variable, file_names, unused_import
//import 'dart:developer';
//import 'package:flutter/services.dart';

import 'dart:convert';
import 'dart:developer';
import 'package:cnpj_consulta/MCnpjQsa.dart';
import 'package:cnpj_consulta/MCnpjAtividadePrincipal.dart';
import 'package:cnpj_consulta/MCnpjAtividadesSecundarias.dart';
import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import '../funcoes/fJson.dart';
import 'MCnpj.dart';

part 'MCnpjReceitaWs.g.dart';

@JsonSerializable(explicitToJson: true)
class Billing {
  bool? free = true;
  bool? database = true;

  Billing({
    this.free = true,
    this.database = true,
  });

  Billing copyWith({
    bool? free,
    bool? database,
  }) {
    return Billing(
      free: free ?? this.free,
      database: database ?? this.database,
    );
  }

  factory Billing.fromJson(Map<String, dynamic> json) =>
      _$BillingFromJson(json);
  Map<String, dynamic> toJson() => _$BillingToJson(this);

  factory Billing.fromJsonString(String jsonS) =>
      Billing.fromJson(jsonDecode(jsonS));
  String toJsonString() => jsonEncode(_$BillingToJson(this));

  static List<Billing> lBillingFromJson(String str) =>
      List<Billing>.from(jsonDecode(str).map((x) => Billing.fromJson(x)));
  static List<Billing> lBillingFromMap(List<Map<String, Object?>> lMap) =>
      lMap.map((x) => Billing.fromJson(x)).toList();

  static String lBillingToJson(List<Billing> data) =>
      jsonEncode(List<dynamic>.from(data.map((x) => x.toJson())),
          toEncodable: FJson.dataHoraSeralizer);
}

@JsonSerializable(explicitToJson: true)
class CNPJReceitaWS {
  String? status = "";
  DateTime? ultima_atualizacao;
  int? days;
  String? cnpj = "";
  String? tipo = "";
  String? porte = "";
  String? nome = "";
  String? fantasia = "";
  String? abertura = "";
  List<AtividadePrincipal>? atividade_principal;
  List<AtividadesSecundarias>? atividades_secundarias;
  String? natureza_juridica = "";
  String? logradouro = "";
  String? numero = "";
  String? complemento = "";
  String? cep = "";
  String? bairro = "";
  String? municipio = "";
  String? uf = "";
  String? email = "";
  String? telefone = "";
  String? efr = "";
  String? situacao = "";
  String? data_situacao = "";
  String? motivo_situacao = "";
  String? situacao_especial = "";
  String? data_situacao_especial = "";
  String? capital_social = "";
  List<Qsa>? qsa;
  Billing? billing = Billing();

  CNPJReceitaWS({
    this.status = "",
    this.ultima_atualizacao,
    this.days,
    this.cnpj = "",
    this.tipo = "",
    this.porte = "",
    this.nome = "",
    this.fantasia = "",
    this.abertura = "",
    this.atividade_principal,
    this.atividades_secundarias,
    this.natureza_juridica = "",
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
    this.data_situacao = "",
    this.motivo_situacao = "",
    this.situacao_especial = "",
    this.data_situacao_especial = "",
    this.capital_social = "",
    this.qsa,
    this.billing,
  });

  CNPJReceitaWS copyWith({
    String? status,
    DateTime? ultima_atualizacao,
    int? days,
    String? cnpj,
    String? tipo,
    String? porte,
    String? nome,
    String? fantasia,
    String? abertura,
    List<AtividadePrincipal>? atividade_principal,
    List<AtividadesSecundarias>? atividades_secundarias,
    String? natureza_juridica,
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
    String? data_situacao,
    String? motivo_situacao,
    String? situacao_especial,
    String? data_situacao_especial,
    String? capital_social,
    List<Qsa>? qsa,
    Billing? billing,
  }) {
    return CNPJReceitaWS(
      status: status ?? this.status,
      ultima_atualizacao: ultima_atualizacao ?? this.ultima_atualizacao,
      days: days ?? this.days,
      cnpj: cnpj ?? this.cnpj,
      tipo: tipo ?? this.tipo,
      porte: porte ?? this.porte,
      nome: nome ?? this.nome,
      fantasia: fantasia ?? this.fantasia,
      abertura: abertura ?? this.abertura,
      atividade_principal: atividade_principal ?? this.atividade_principal,
      atividades_secundarias:
          atividades_secundarias ?? this.atividades_secundarias,
      natureza_juridica: natureza_juridica ?? this.natureza_juridica,
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
      data_situacao: data_situacao ?? this.data_situacao,
      motivo_situacao: motivo_situacao ?? this.motivo_situacao,
      situacao_especial: situacao_especial ?? this.situacao_especial,
      data_situacao_especial:
          data_situacao_especial ?? this.data_situacao_especial,
      capital_social: capital_social ?? this.capital_social,
      qsa: qsa ?? this.qsa,
      billing: billing ?? this.billing,
    );
  }

  factory CNPJReceitaWS.fromJson(Map<String, dynamic> json) =>
      _$CNPJReceitaWSFromJson(json);
  Map<String, dynamic> toJson() => _$CNPJReceitaWSToJson(this);

  factory CNPJReceitaWS.fromJsonString(String jsonS) =>
      CNPJReceitaWS.fromJson(jsonDecode(jsonS));
  String toJsonString() => jsonEncode(_$CNPJReceitaWSToJson(this));

  static List<CNPJReceitaWS> lCNPJReceitaWSFromJson(String str) =>
      List<CNPJReceitaWS>.from(
          jsonDecode(str).map((x) => CNPJReceitaWS.fromJson(x)));
  static List<CNPJReceitaWS> lCNPJReceitaWSFromMap(
          List<Map<String, Object?>> lMap) =>
      lMap.map((x) => CNPJReceitaWS.fromJson(x)).toList();

  static String lCNPJReceitaWSToJson(List<CNPJReceitaWS> data) =>
      jsonEncode(List<dynamic>.from(data.map((x) => x.toJson())),
          toEncodable: FJson.dataHoraSeralizer);

  static Future<CNPJNormal> consultarCNPJ(String cnpj, int days) async {
    final dio = Dio();
    Response responseDio;
    String sUrl = "";

    if (days > 0) {     // Caso days esteja preenchido, é a API Comercial

      String token = "9c6bde7c95d6c05ec2225a24d53b286f38b962248c2ef76763f9b4b3a2200da4";
      sUrl = "https://receitaws.com.br/v1/cnpj/${cnpj.trim().replaceAll('.', '').replaceAll('-', '').replaceAll('/', '')}/days/$days";

      dio.options.headers = {
        "Authorization": "Bearer $token",
        "Content-Type": "application/json",
      };

    } else {      // Caso days esteja vazio, é a API Publica
      sUrl =
          "https://receitaws.com.br/v1/cnpj/${cnpj.trim().replaceAll('.', '').replaceAll('-', '').replaceAll('/', '')}";
    }

    responseDio = await dio.get(
      sUrl,
      //queryParameters: {'cnpj': cnpj, 'days': days},
    );

    CNPJNormal cnpjNormal = CNPJNormal();
    String sMensagem = "";
    CNPJReceitaWS cnpjReceita = CNPJReceitaWS();

    cnpjReceita = CNPJReceitaWS.fromJson(responseDio.data);

    int numQsa = 0;
    cnpjNormal.qsa = [];
    for (var obj in cnpjReceita.qsa!) {
      cnpjNormal.qsa!.add(obj);
      cnpjNormal.qsa![numQsa].nome_socio = cnpjNormal.qsa![numQsa].nome;
      cnpjNormal.qsa![numQsa].qualificacao_socio =
          cnpjNormal.qsa![numQsa].qual!.split('-').sublist(1).join(' ').trim();
      numQsa++;
    }

    cnpjNormal.atividade_principal = [];
    for (var obj in cnpjReceita.atividade_principal!) {
      cnpjNormal.atividade_principal!.add(obj);
    }

    cnpjNormal.atividades_secundarias = [];
    for (var obj in cnpjReceita.atividades_secundarias!) {
      cnpjNormal.atividades_secundarias!.add(obj);
    }

//iguais
    cnpjNormal.cnpj = cnpjReceita.cnpj;
    cnpjNormal.porte = cnpjReceita.porte;
    cnpjNormal.logradouro = cnpjReceita.logradouro;
    cnpjNormal.numero = cnpjReceita.numero;
    cnpjNormal.complemento = cnpjReceita.complemento;
    cnpjNormal.bairro = cnpjReceita.bairro;
    cnpjNormal.cep = cnpjReceita.cep;
    cnpjNormal.uf = cnpjReceita.uf;
    cnpjNormal.municipio = cnpjReceita.municipio;

    if (cnpjReceita.capital_social != "") {
      cnpjNormal.capitalSocial = int.parse(
          double.parse(cnpjReceita.capital_social!).toStringAsFixed(0));
    }

    cnpjNormal.situacaoEspecial = cnpjReceita.situacao_especial;

    if (cnpjReceita.data_situacao_especial != "") {
      cnpjNormal.dataSituacaoEspecial =
          DateTime.tryParse(cnpjReceita.data_situacao_especial ?? '');
    }
//equivalentes
    cnpjNormal.nome = cnpjReceita.fantasia;
    cnpjNormal.razao = cnpjReceita.nome;
    cnpjNormal.tipoMatrizFilial = cnpjReceita.tipo;

    if (cnpjReceita.natureza_juridica != "") {
      cnpjNormal.naturezaJuridica =
          cnpjReceita.natureza_juridica!.split('-')[2].trim();
      cnpjNormal.codigoNaturezaJuridica = int.parse(cnpjReceita
          .natureza_juridica!
          .split(' ')[0]
          .replaceAll('-', '')
          .trim());
    }

    if (cnpjReceita.abertura != "") {
      var auxAno = int.parse(cnpjReceita.abertura!.split('/')[2]);
      var auxMes = int.parse(cnpjReceita.abertura!.split('/')[1]);
      var auxDia = int.parse(cnpjReceita.abertura!.split('/')[0]);
      cnpjNormal.abertura = DateTime(auxAno, auxMes, auxDia);
    }

    cnpjNormal.telefone = cnpjReceita.telefone;
    cnpjNormal.situacaoCadastral = cnpjReceita.situacao;

    if (cnpjReceita.data_situacao != "") {
      var auxAno = int.parse(cnpjReceita.data_situacao!.split('/')[2]);
      var auxMes = int.parse(cnpjReceita.data_situacao!.split('/')[1]);
      var auxDia = int.parse(cnpjReceita.data_situacao!.split('/')[0]);
      cnpjNormal.dataSituacaoCadastral = DateTime(auxAno, auxMes, auxDia);
    }

    cnpjNormal.descricaoMotivoSituacaoCadastral = cnpjReceita.motivo_situacao;

//particular
    cnpjNormal.status = cnpjReceita.status;
    cnpjNormal.ultimaAtualizacao = cnpjReceita.ultima_atualizacao;
    cnpjNormal.efr = cnpjReceita.efr;
    cnpjNormal.email = cnpjReceita.email;

    cnpjNormal.billingFree = cnpjReceita.billing!.free;
    cnpjNormal.billingDatabase = cnpjReceita.billing!.database;

    cnpjNormal.cnaeFiscal = int.parse(cnpjReceita.atividade_principal![0].code!
        .replaceAll('.', '')
        .replaceAll('-', '')
        .trim());
    cnpjNormal.cnaeFiscalDescricao = cnpjReceita.atividade_principal![0].text;

    cnpjNormal.cnaeAtvSecundaria = int.parse(cnpjReceita
        .atividades_secundarias![0].code!
        .replaceAll('.', '')
        .replaceAll('-', '')
        .trim());
    cnpjNormal.cnaeAtvSecundariaDescricao =
        cnpjReceita.atividades_secundarias![0].text;

    if (responseDio.statusCode != 200) {
      sMensagem = "Aconteceu uma falha ao consultar o Cnpj na ReceitaWS.";
      sMensagem += "\n(${responseDio.statusCode})";
    }

    return cnpjNormal;
  }
}
