// ignore_for_file: non_constant_identifier_names, unnecessary_this, avoid_print, unused_local_variable, file_names

import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import '../funcoes/fJson.dart';

part 'MCnpjQsa.g.dart';

@JsonSerializable(explicitToJson: true)
class Qsa {
  String? pais;
  String? nome_socio;
  int? codigo_pais; 
  String? faixa_etaria; 
  String? cnpj_cpf_do_socio;
  String? qualificacao_socio;
  int? codigo_faixa_etaria; 
  String? data_entrada_sociedade;
  int? identificador_de_socio;
  String? cpf_representante_legal;
  String? nome_representante_legal;
  int? codigo_qualificacao_socio;
  String? qualificacao_representante_legal; 
  int? codigo_qualificacao_representante_legal;  
  String? nome;
  String? qual;

  Qsa({
    this.pais = "",
    this.nome_socio = "",
    this.codigo_pais,
    this.faixa_etaria = "",
    this.cnpj_cpf_do_socio = "",
    this.qualificacao_socio = "",
    this.codigo_faixa_etaria,
    this.data_entrada_sociedade = "",
    this.identificador_de_socio,
    this.cpf_representante_legal = "",
    this.nome_representante_legal = "",
    this.codigo_qualificacao_socio,
    this.qualificacao_representante_legal = "",
    this.codigo_qualificacao_representante_legal,
    this.nome = "",
    this.qual = "",
    });

  Qsa copyWith({
    String? pais,
    String? nome_socio,
    int? codigo_pais,
    String? faixa_etaria,
    String? cnpj_cpf_do_socio,
    String? qualificacao_socio,
    int? codigo_faixa_etaria,
    String? data_entrada_sociedade,
    int? identificador_de_socio,
    String? cpf_representante_legal,
    String? nome_representante_legal,
    int? codigo_qualificacao_socio,
    String? qualificacao_representante_legal,
    int? codigo_qualificacao_representante_legal,
    String? nome,
    String? qual,
	}) {
	  return Qsa(
    pais: pais ?? this.pais,
    nome_socio: nome_socio ?? this.nome_socio,
    codigo_pais: codigo_pais ?? this.codigo_pais,
    faixa_etaria: faixa_etaria ?? this.faixa_etaria,
    cnpj_cpf_do_socio: cnpj_cpf_do_socio ?? this.cnpj_cpf_do_socio,
    qualificacao_socio: qualificacao_socio ?? this.qualificacao_socio,
    codigo_faixa_etaria: codigo_faixa_etaria ?? this.codigo_faixa_etaria,
    data_entrada_sociedade: data_entrada_sociedade ?? this.data_entrada_sociedade,
    identificador_de_socio: identificador_de_socio ?? this.identificador_de_socio,
    cpf_representante_legal: cpf_representante_legal ?? this.cpf_representante_legal,
    nome_representante_legal: nome_representante_legal ?? this.nome_representante_legal,
    codigo_qualificacao_socio: codigo_qualificacao_socio ?? this.codigo_qualificacao_socio,
    qualificacao_representante_legal: qualificacao_representante_legal ?? this.qualificacao_representante_legal,
    codigo_qualificacao_representante_legal: codigo_qualificacao_representante_legal ?? this.codigo_qualificacao_representante_legal,
    nome: nome ?? this.nome,
    qual: qual ?? this.qual,
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




