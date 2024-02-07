import 'dart:convert';
//import 'dart:developer';
import 'package:json_annotation/json_annotation.dart';
import '../funcoes/fJson.dart';

part 'cnpj_normal.g.dart';

@JsonSerializable(explicitToJson: true)
class CNPJNormal {
  String? cnpj;
  String? porte;
  String? razao;
  String? nome;
  String? logradouro;
  String? numero;
  String? complemento;
  String? bairro;
  String? cep;
  String? uf;
  String? municipio;
  String? capitalSocial;
  String? qsa;
  String? situacaoEspecial;
  String? dataSituacaoEspecial;
  String? tipoMatrizFilial;
  int? naturezaJuridica;
  String? abertura;
  String? telefone;
  String? situacaoCadastral;
  String? dataSituacaoCadastral;
  String? descricaoMotivoSituacaoCadastral;
  int? identificadorMatrizFilial;
  int? codigoMunicipio;
  int? motivoSituacaoCadastral;
  String? nomeCidadeExterior;
  String? descricaoTipoLogradouro;
  String? dddTelefone2;
  String? dddFax;
  String? qualificacaoDoResponsavel;
  String? descricaoPorte;
  bool? opcaoPeloSimples;
  DateTime? dataOpcaoPeloSimples;
  DateTime? dataExclusaoDoSimples;
  String? opcaoPeloMei;
  String? cnaesSecundarios;

  String? cnaeFiscal;
  String? cnaeFiscalDescricao;

  CNPJNormal({
    this.cnpj = "",
    this.porte = "",
    this.razao = "",
    this.nome = "",
    this.logradouro = "",
    this.numero = "",
    this.complemento = "",
    this.bairro = "",
    this.cep = "",
    this.uf = "",
    this.municipio = "",
    this.capitalSocial = "",
    this.qsa = "",
    this.situacaoEspecial = "",
    this.dataSituacaoEspecial = "",
    this.tipoMatrizFilial = "",
    this.naturezaJuridica,
    this.abertura = "",
    this.telefone = "",
    this.situacaoCadastral = "",
    this.dataSituacaoCadastral = "",
    this.descricaoMotivoSituacaoCadastral = "",
    this.identificadorMatrizFilial,
    this.codigoMunicipio,
    this.motivoSituacaoCadastral,
    this.nomeCidadeExterior = "",
    this.descricaoTipoLogradouro = "",
    this.dddTelefone2 = "",
    this.dddFax = "",
    this.qualificacaoDoResponsavel = "",
    this.descricaoPorte = "",
    this.opcaoPeloSimples,
    this.dataOpcaoPeloSimples,
    this.dataExclusaoDoSimples,
    this.opcaoPeloMei = "",
    this.cnaesSecundarios = "",
    this.cnaeFiscal = "",
    this.cnaeFiscalDescricao = "",
  });

  CNPJNormal copyWit({
    String? cnpj,
    String? porte,
    String? razao,
    String? nome,
    String? logradouro,
    String? numero,
    String? complemento,
    String? bairro,
    String? cep,
    String? uf,
    String? municipio,
    String? capitalSocial,
    String? qsa,
    String? situacaoEspecial,
    String? dataSituacaoEspecial,
    String? tipoMatrizFilial,
    int? naturezaJuridica,
    String? abertura,
    String? telefone,
    String? situacaoCadastral,
    String? dataSituacaoCadastral,
    String? descricaoMotivoSituacaoCadastral,
    int? identificadorMatrizFilial,
    int? codigoMunicipio,
    int? motivoSituacaoCadastral,
    String? nomeCidadeExterior,
    String? descricaoTipoLogradouro,
    String? dddTelefone2,
    String? dddFax,
    String? qualificacaoDoResponsavel,
    String? descricaoPorte,
    bool? opcaoPeloSimples,
    DateTime? dataOpcaoPeloSimples,
    DateTime? dataExclusaoDoSimples,
    String? opcaoPeloMei,
    String? cnaesSecundarios,
    String? cnaeFiscal,
    String? cnaeFiscalDescricao

  }) {
    return CNPJNormal(
      cnpj: cnpj ?? this.cnpj,
      porte: porte ?? this.porte,
      razao: razao ?? this.razao,
      nome: nome ?? this.nome,
      logradouro: logradouro ?? this.logradouro,
      numero: numero ?? this.numero,
      complemento: complemento ?? this.complemento,
      bairro: bairro ?? this.bairro,
      cep: cep ?? this.cep,
      uf: uf ?? this.uf,
      municipio: municipio ?? this.municipio,
      capitalSocial: capitalSocial ?? this.capitalSocial,
      qsa: qsa ?? this.qsa,
      situacaoEspecial: situacaoEspecial ?? this.situacaoEspecial,
      dataSituacaoEspecial: dataSituacaoEspecial ?? this.dataSituacaoEspecial,
      tipoMatrizFilial: tipoMatrizFilial ?? this.tipoMatrizFilial,
      naturezaJuridica: naturezaJuridica ?? this.naturezaJuridica,
      abertura: abertura ?? this.abertura,
      telefone: telefone ?? this.telefone,
      situacaoCadastral: situacaoCadastral ?? this.situacaoCadastral,
      dataSituacaoCadastral: dataSituacaoCadastral ?? this.dataSituacaoCadastral,
      descricaoMotivoSituacaoCadastral: descricaoMotivoSituacaoCadastral ?? this.descricaoMotivoSituacaoCadastral,
      identificadorMatrizFilial: identificadorMatrizFilial ?? this.identificadorMatrizFilial,
      codigoMunicipio: codigoMunicipio ?? this.codigoMunicipio,
      motivoSituacaoCadastral: motivoSituacaoCadastral ?? this.motivoSituacaoCadastral,
      nomeCidadeExterior: nomeCidadeExterior ?? this.nomeCidadeExterior,
      descricaoTipoLogradouro: descricaoTipoLogradouro ?? this.descricaoTipoLogradouro,
      dddTelefone2: dddTelefone2 ?? this.dddTelefone2,
      dddFax: dddFax ?? this.dddFax,
      qualificacaoDoResponsavel: qualificacaoDoResponsavel ?? this.qualificacaoDoResponsavel,
      descricaoPorte: descricaoPorte ?? this.descricaoPorte,
      opcaoPeloSimples: opcaoPeloSimples ?? this.opcaoPeloSimples,
      dataOpcaoPeloSimples: dataOpcaoPeloSimples ?? this.dataOpcaoPeloSimples,
      dataExclusaoDoSimples: dataExclusaoDoSimples ?? this.dataExclusaoDoSimples,
      opcaoPeloMei: opcaoPeloMei ?? this.opcaoPeloMei,
      cnaesSecundarios: cnaesSecundarios ?? this.cnaesSecundarios,
      cnaeFiscal: cnaeFiscal ?? this.cnaeFiscal,
      cnaeFiscalDescricao: cnaeFiscalDescricao ?? this.cnaeFiscalDescricao,
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