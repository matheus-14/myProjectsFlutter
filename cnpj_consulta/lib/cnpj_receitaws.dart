import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';
import '../funcoes/fJson.dart';


//import 'cnpj.dart';
//part 'CNPJReceitaWS.g.dart';

part 'cnpj_receitaws.g.dart';

//-----------------------------
@JsonSerializable(explicitToJson: true)
class AtividadePrincipal {
  String? code;
  String? text;

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
  String? code;
  String? text;

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
  String? nome;
  String? qual;
  String? paisOrigem;
  String? nomeRepLegal;
  String? qualRepLegal;

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
  bool? free;
  bool? database;

  Billing({
    this.free,
    this.database,
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
//-----------------------------


@JsonSerializable(explicitToJson: true)
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