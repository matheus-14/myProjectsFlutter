import 'dart:convert';
//import 'dart:developer';
import 'package:json_annotation/json_annotation.dart';
import '../funcoes/fJson.dart';

part 'cnpj_normal.g.dart';

@JsonSerializable(explicitToJson: true)
class CNPJNormal {
  String? cnpj;
  String? porte;
  String? nome;
  String? logradouro;
  String? numero;
  String? complemento;
  String? bairro;
  String? cep;
  String? uf;
  String? capitalSocial;
  String? qsa;
  String? situacaoEspecial;
  String? dataSituacaoEspecial;

  CNPJNormal({
    this.cnpj = "",
    this.porte = "",
    this.nome = "",
    this.logradouro = "",
    this.numero = "",
    this.complemento = "",
    this.bairro = "",
    this.cep = "",
    this.uf = "",
    this.capitalSocial = "",
    this.qsa = "",
    this.situacaoEspecial = "",
    this.dataSituacaoEspecial = "",
  });

  CNPJNormal copyWit({
    String? cnpj,
    String? porte,
    String? nome,
    String? logradouro,
    String? numero,
    String? complemento,
    String? bairro,
    String? cep,
    String? uf,
    String? capitalSocial,
    String? qsa,
    String? situacaoEspecial,
    String? dataSituacaoEspecial,

  }) {
    return CNPJNormal(
      cnpj: cnpj ?? this.cnpj,
      porte: porte ?? this.porte,
      nome: nome ?? this.nome,
      logradouro: logradouro ?? this.logradouro,
      numero: numero ?? this.numero,
      complemento: complemento ?? this.complemento,
      bairro: bairro ?? this.bairro,
      cep: cep ?? this.cep,
      uf: uf ?? this.uf,
      capitalSocial: capitalSocial ?? this.capitalSocial,
      qsa: qsa ?? this.qsa,
      situacaoEspecial: situacaoEspecial ?? this.situacaoEspecial,
      dataSituacaoEspecial: dataSituacaoEspecial ?? this.dataSituacaoEspecial,
    );
  }

  factory CNPJNormal.fromJson(Map<String, dynamic> json) => _$CNPJNormalFromJson(json);
  Map<String, dynamic> toJson() => _$CNPJNormalToJson(this);

  factory CNPJNormal.fromJsonString(String jsonS) => CNPJNormal.fromJson(jsonDecode(jsonS));
  String toJsonString() => jsonEncode(_$CNPJNormalToJson(this));

  static List<CNPJNormal> lCNPJNormalFromJson(String str) => List<CNPJNormal>.from(jsonDecode(str).map((x) => CNPJNormal.fromJson(x)));
  static List<CNPJNormal> lCNPJNormalFromMap(List<Map<String, Object?>> lMap) => lMap.map((x) => CNPJNormal.fromJson(x)).toList();

  static String lCNPJNormalToJson(List<CNPJNormal> data) => jsonEncode(List<dynamic>.from(data.map((x) => x.toJson())), toEncodable: FJson.dataHoraSeralizer);


}