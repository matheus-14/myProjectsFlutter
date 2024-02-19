// ignore_for_file: non_constant_identifier_names, avoid_print, unused_local_variable
//import 'dart:developer';
import 'package:flutter/services.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';
import '../funcoes/fJson.dart';
import 'cnpj_normal.dart';

part 'cnpj_receitaws.g.dart';

@JsonSerializable(explicitToJson: true)
class AtividadePrincipal {
  String? code = "";
  String? text = "";

	AtividadePrincipal({
		this.code = "",
		this.text = "",
  });

  AtividadePrincipal copyWith({
	  String? code,
		String? text,
	}) {
	  return AtividadePrincipal(
		  code: code ?? this.code,
		  text: text ?? this.text,
	);
	}

  factory AtividadePrincipal.fromJson(Map<String, dynamic> json) => _$AtividadePrincipalFromJson(json);
  Map<String, dynamic> toJson() => _$AtividadePrincipalToJson(this);

  factory AtividadePrincipal.fromJsonString(String jsonS) => AtividadePrincipal.fromJson(jsonDecode(jsonS));
  String toJsonString() => jsonEncode(_$AtividadePrincipalToJson(this));

  static List<AtividadePrincipal> lAtividadePrincipalFromJson(String str) => List<AtividadePrincipal>.from(jsonDecode(str).map((x) => AtividadePrincipal.fromJson(x)));
  static List<AtividadePrincipal> lAtividadePrincipalFromMap(List<Map<String, Object?>> lMap) => lMap.map((x) => AtividadePrincipal.fromJson(x)).toList();

  static String lAtividadePrincipalToJson(List<AtividadePrincipal> data) => jsonEncode(List<dynamic>.from(data.map((x) => x.toJson())), toEncodable: FJson.dataHoraSeralizer);
}

@JsonSerializable(explicitToJson: true)
class AtividadesSecundarias {
  String? code = "";
  String? text = "";

	AtividadesSecundarias({
		this.code = "",
		this.text = "",
  });

  AtividadesSecundarias copyWith({
	  String? code,
		String? text,
	}) {
	  return AtividadesSecundarias(
		  code: code ?? this.code,
		  text: text ?? this.text,
	);
  }

  factory AtividadesSecundarias.fromJson(Map<String, dynamic> json) => _$AtividadesSecundariasFromJson(json);
  Map<String, dynamic> toJson() => _$AtividadesSecundariasToJson(this);

  factory AtividadesSecundarias.fromJsonString(String jsonS) => AtividadesSecundarias.fromJson(jsonDecode(jsonS));
  String toJsonString() => jsonEncode(_$AtividadesSecundariasToJson(this));

  static List<AtividadesSecundarias> lAtividadesSecundariasFromJson(String str) => List<AtividadesSecundarias>.from(jsonDecode(str).map((x) => AtividadesSecundarias.fromJson(x)));
  static List<AtividadesSecundarias> lAtividadesSecundariasFromMap(List<Map<String, Object?>> lMap) => lMap.map((x) => AtividadesSecundarias.fromJson(x)).toList();

  static String lAtividadesSecundariasToJson(List<AtividadesSecundarias> data) => jsonEncode(List<dynamic>.from(data.map((x) => x.toJson())), toEncodable: FJson.dataHoraSeralizer);
}

@JsonSerializable(explicitToJson: true)
class Qsa {
  String? nome = "";
  String? qual = "";
  String? paisOrigem = "";
  String? nomeRepLegal = "";
  String? qualRepLegal = "";

  Qsa({
    this.nome = "",
    this.qual = "",
    this.paisOrigem = "",
    this.nomeRepLegal = "",
    this.qualRepLegal = "",
	});

  Qsa copyWith({
	  String? nome,
    String? qual,
    String? paisOrigem,
    String? nomeRepLegal,
    String? qualRepLegal,
	}) {
	  return Qsa(
		nome: nome ?? this.nome,
		qual: qual ?? this.qual,
		paisOrigem: paisOrigem ?? this.paisOrigem,
		nomeRepLegal: nomeRepLegal ?? this.nomeRepLegal,
		qualRepLegal: qualRepLegal ?? this.qualRepLegal,
	);
	}
  
  factory Qsa.fromJson(Map<String, dynamic> json) => _$QsaFromJson(json);
  Map<String, dynamic> toJson() => _$QsaToJson(this);

  factory Qsa.fromJsonString(String jsonS) => Qsa.fromJson(jsonDecode(jsonS));
  String toJsonString() => jsonEncode(_$QsaToJson(this));

  static List<Qsa> lQsaFromJson(String str) => List<Qsa>.from(jsonDecode(str).map((x) => Qsa.fromJson(x)));
  static List<Qsa> lQsaFromMap(List<Map<String, Object?>> lMap) => lMap.map((x) => Qsa.fromJson(x)).toList();

  static String lQsaToJson(List<Qsa> data) => jsonEncode(List<dynamic>.from(data.map((x) => x.toJson())), toEncodable: FJson.dataHoraSeralizer);
}

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

  factory Billing.fromJson(Map<String, dynamic> json) => _$BillingFromJson(json);
  Map<String, dynamic> toJson() => _$BillingToJson(this);

  factory Billing.fromJsonString(String jsonS) => Billing.fromJson(jsonDecode(jsonS));
  String toJsonString() => jsonEncode(_$BillingToJson(this));

  static List<Billing> lBillingFromJson(String str) => List<Billing>.from(jsonDecode(str).map((x) => Billing.fromJson(x)));
  static List<Billing> lBillingFromMap(List<Map<String, Object?>> lMap) => lMap.map((x) => Billing.fromJson(x)).toList();

  static String lBillingToJson(List<Billing> data) => jsonEncode(List<dynamic>.from(data.map((x) => x.toJson())), toEncodable: FJson.dataHoraSeralizer);
}

@JsonSerializable(explicitToJson: true)
class CNPJReceitaWS {
  String? status = "";
  DateTime? ultima_atualizacao;
  String? cnpj = "";
  String? tipo = "";
  String? porte = "";
  String? nome = "";
  String? fantasia = "";
  String? abertura = "";
  List<AtividadePrincipal>? atividade_principal = <AtividadePrincipal>[];
  List<AtividadesSecundarias>? atividades_secundarias = <AtividadesSecundarias>[];
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
  List<Qsa>? qsa = <Qsa>[];
  Billing? billing = Billing();

  CNPJReceitaWS({
      this.status = "",
      this.ultima_atualizacao,
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
      cnpj: cnpj ?? this.cnpj,
      tipo: tipo ?? this.tipo,
      porte: porte ?? this.porte,
      nome: nome ?? this.nome,
      fantasia: fantasia ?? this.fantasia,
      abertura: abertura ?? this.abertura,
      atividade_principal: atividade_principal ?? this.atividade_principal,
      atividades_secundarias: atividades_secundarias ?? this.atividades_secundarias,
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
      data_situacao_especial: data_situacao_especial ?? this.data_situacao_especial,
      capital_social: capital_social ?? this.capital_social,
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

 
  static Future<CNPJNormal> consultarCNPJ(String cnpj) async {

    final url = Uri.parse("https://receitaws.com.br/v1/cnpj/${cnpj.trim().replaceAll('.', '').replaceAll('-', '').replaceAll('/', '')}");

    final response = await http.get(url);

    CNPJNormal cnpjNormal = CNPJNormal();
    String sMensagem = "";

    CNPJReceitaWS cnpjReceita = CNPJReceitaWS();
    //try {
     await Clipboard.setData(ClipboardData(text: response.body));
    cnpjReceita = CNPJReceitaWS.fromJsonString(response.body);        
    Qsa qsa = Qsa();
    AtividadePrincipal cnaeAtvPrincipal = AtividadePrincipal();
    AtividadesSecundarias cnaeAtvSecundaria = AtividadesSecundarias();
    Billing billing = Billing();

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

    if(cnpjReceita.capital_social != ""){
      cnpjNormal.capitalSocial = int.parse(double.parse(cnpjReceita.capital_social!).toStringAsFixed(0));
    }

    cnpjNormal.situacaoEspecial = cnpjReceita.situacao_especial;

    if(cnpjReceita.data_situacao_especial != ""){
      cnpjNormal.dataSituacaoEspecial = DateTime.tryParse(cnpjReceita.data_situacao_especial ?? '');
    }
//equivalentes
    cnpjNormal.nome = cnpjReceita.nome;
    cnpjNormal.tipoMatrizFilial = cnpjReceita.tipo;

    if(cnpjReceita.natureza_juridica != ""){
      cnpjNormal.naturezaJuridica = cnpjReceita.natureza_juridica!.split('-')[2];         
      cnpjNormal.codigoNaturezaJuridica = int.parse(cnpjReceita.natureza_juridica!.split(' ')[0].replaceAll('-', '').trim());
    }

    if(cnpjReceita.abertura != ""){

      var auxAno = int.parse(cnpjReceita.abertura!.split('/')[2]);
      var auxMes = int.parse(cnpjReceita.abertura!.split('/')[1]);
      var auxDia = int.parse(cnpjReceita.abertura!.split('/')[0]);
      cnpjNormal.abertura = DateTime(auxAno, auxMes, auxDia);
    }

     cnpjNormal.telefone = cnpjReceita.telefone;
     cnpjNormal.situacaoCadastral = cnpjReceita.situacao;

    if(cnpjReceita.data_situacao != ""){
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
    cnpjNormal.billingFree = billing.free;
    cnpjNormal.billingDatabase = billing.database;
    
    if(cnaeAtvPrincipal.text != ""){
      cnpjNormal.cnaeFiscal = int.parse(cnaeAtvPrincipal.code!.replaceAll('.', '').replaceAll('-', '').trim());
      cnpjNormal.cnaeFiscalDescricao = cnaeAtvPrincipal.text!;
    }

    if(cnaeAtvSecundaria.code != ""){
      cnpjNormal.cnaeAtvSecundaria = int.parse(cnaeAtvSecundaria.code!.replaceAll('.', '').replaceAll('-', '').trim());
      cnpjNormal.cnaeAtvSecundariaDescricao = cnaeAtvSecundaria.text!;     
    }

    if(qsa.qual != ""){
      cnpjNormal.codigoQualificacaoDoResponsavel = int.parse(qsa.qual!.split('-')[0]);
      cnpjNormal.qualificacaoDoResponsavel = qsa.qual!.split('-').sublist(1).toString();
    }
    
    if(qsa.nome != ""){
     cnpjNormal.nomeSocio = qsa.nome;
    }

      /*} catch (e) {
        debugger();
      }*/

    if(response.statusCode != 200){
      sMensagem = "Aconteceu uma falha ao consultar o Cnpj na ReceitaWS.";
    }

      return cnpjNormal;

  }

}