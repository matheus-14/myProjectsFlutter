// ignore_for_file: non_constant_identifier_names, unnecessary_this, avoid_print, unused_local_variable, unused_import, file_names

import 'dart:convert';
import 'dart:developer';
import 'package:json_annotation/json_annotation.dart';
import '../funcoes/fJson.dart';
import 'MCnpjBrasilAPI.dart';
import 'MCnpjReceitaWs.dart';
import 'MCnpjQsa.dart';
import 'MCnpjAtividadePrincipal.dart';
import 'MCnpjAtividadesSecundarias.dart';
import 'MCnpjCnaesSecundarios.dart';

part 'MCnpj.g.dart';


@JsonSerializable(explicitToJson: true)
class MCnpj {
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
  List<CnaesSecundarios>? cnaes_secundarios;
  List<Qsa>? qsa;
  List<AtividadePrincipal>? atividade_principal;
  List<AtividadesSecundarias>? atividades_secundarias;

  String? situacaoEspecial;
  DateTime? dataSituacaoEspecial;
  String? tipoMatrizFilial;
  int? codigoNaturezaJuridica;
  String? naturezaJuridica;
  DateTime? abertura;
  String? telefone;
  String? situacaoCadastral;
  DateTime? dataSituacaoCadastral;
  String? descricaoMotivoSituacaoCadastral;
  String? enteFederativoResponsavel;
  String? qualificacaoDoResponsavel;
  int? codigoQualificacaoDoResponsavel;
  bool? opcaoPeloSimples;
  String? cnaesSecundarios;
  int? cnaeFiscal;    
  String? cnaeFiscalDescricao;
  int? cnaeAtvSecundaria;
  String? cnaeAtvSecundariaDescricao;
  //receitaWs:
  String? status;
  String? efr;
  String? email;
  DateTime? ultimaAtualizacao;
  bool? billingFree;
  bool? billingDatabase;
  //brasilApi:
  int? identificadorMatrizFilial;
  int? codigoMunicipio;
  int? codigo_municipio_ibge;
  int? motivoSituacaoCadastral;
  String? nomeCidadeExterior;
  String? descricaoTipoLogradouro;
  String? dddTelefone2;
  String? dddFax;
  String? descricaoPorte;
  DateTime? dataOpcaoPeloSimples;
  DateTime? dataExclusaoDoSimples;
  DateTime? dataOpcaoPeloMei;
  DateTime? dataExclusaoDoMei;
  bool? opcaoPeloMei;
  String? pais;
  String? nomeSocio;
  int? codigoPais; 
  String? faixaEtaria; 
  String? cnpjCpfDoSocio;
  String? qualificacaoSocio;
  int? codigoFaixaEtaria; 
  DateTime? dataEntradaSociedade;
  int? identificadorDeSocio;
  String? cpfRepresentanteLegal;
  String? nomeRepresentanteLegal;
  int? codigoQualificacaoSocio;
  String? qualificacaoRepresentanteLegal; 
  int? codigoQualificacaoRepresentanteLegal;
  int? codigoPorte;

MCnpj({
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
  this.cnaes_secundarios,
  this.qsa,
  this.atividade_principal,
  this.atividades_secundarias,
  this.situacaoEspecial = "",
  this.dataSituacaoEspecial,
  this.tipoMatrizFilial = "",
  this.codigoNaturezaJuridica,
  this.naturezaJuridica = "",
  this.abertura,
  this.telefone = "",
  this.situacaoCadastral = "",
  this.dataSituacaoCadastral,
  this.descricaoMotivoSituacaoCadastral = "",
  this.enteFederativoResponsavel = "",
  this.identificadorMatrizFilial,
  this.codigoMunicipio,
  this.codigo_municipio_ibge,
  this.motivoSituacaoCadastral,
  this.nomeCidadeExterior = "",
  this.descricaoTipoLogradouro = "",
  this.dddTelefone2 = "",
  this.dddFax = "",
  this.qualificacaoDoResponsavel = "",
  this.codigoQualificacaoDoResponsavel,
  this.descricaoPorte = "",
  this.opcaoPeloSimples,
  this.dataOpcaoPeloSimples,
  this.dataExclusaoDoSimples,
  this.dataOpcaoPeloMei,
  this.dataExclusaoDoMei,
  this.opcaoPeloMei,
  this.cnaesSecundarios = "",
  this.cnaeFiscal,
  this.cnaeFiscalDescricao = "",
  this.status = "",
  this.efr = "",
  this.email = "",
  this.ultimaAtualizacao,
  this.cnaeAtvSecundaria,
  this.cnaeAtvSecundariaDescricao,
  this.billingFree,
  this.billingDatabase,
  this.pais = "",
  this.nomeSocio = "",
  this.codigoPais,
  this.faixaEtaria = "",
  this.cnpjCpfDoSocio = "",
  this.qualificacaoSocio = "",
  this.codigoFaixaEtaria,
  this.dataEntradaSociedade,
  this.identificadorDeSocio,
  this.cpfRepresentanteLegal = "",
  this.nomeRepresentanteLegal = "",
  this.codigoQualificacaoSocio,
  this.qualificacaoRepresentanteLegal = "",
  this.codigoQualificacaoRepresentanteLegal,
  this.codigoPorte,
  });

MCnpj copyWit({
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
  List<CnaesSecundarios>? cnaes_secundarios,
  List<Qsa>? qsa,
  List<AtividadePrincipal>? atividade_principal,
  List<AtividadesSecundarias>? atividades_secundarias,
  
  String? situacaoEspecial,
  DateTime? dataSituacaoEspecial,
  String? tipoMatrizFilial,
  int? codigoNaturezaJuridica,
  String? naturezaJuridica,
  DateTime? abertura,
  String? telefone,
  String? situacaoCadastral,
  DateTime? dataSituacaoCadastral,
  String? descricaoMotivoSituacaoCadastral,
  String? enteFederativoResponsavel,
  int? identificadorMatrizFilial,
  int? codigoMunicipio,
  int? codigo_municipio_ibge,
  int? motivoSituacaoCadastral,
  String? nomeCidadeExterior,
  String? descricaoTipoLogradouro,
  String? dddTelefone2,
  String? dddFax,
  String? qualificacaoDoResponsavel,
  int? codigoQualificacaoDoResponsavel,
  String? descricaoPorte,
  bool? opcaoPeloSimples,
  DateTime? dataOpcaoPeloSimples,
  DateTime? dataExclusaoDoSimples,
  DateTime? dataOpcaoPeloMei,
  DateTime? dataExclusaoDoMei,
  bool? opcaoPeloMei,
  String? cnaesSecundarios,
  int? cnaeFiscal,
  String? cnaeFiscalDescricao,
  String? status,
  String? efr,
  String? email,
  DateTime? ultimaAtualizacao,
  int? cnaeAtvSecundaria,
  String? cnaeAtvSecundariaDescricao,
  bool? billingFree,
  bool? billingDatabase,
  String? pais,
  String? nomeSocio,
  int? codigoPais,
  String? faixaEtaria,
  String? cnpjCpfDoSocio,
  String? qualificacaoSocio,
  int? codigoFaixaEtaria,
  DateTime? dataEntradaSociedade,
  int? identificadorDeSocio,
  String? cpfRepresentanteLegal,
  String? nomeRepresentanteLegal,
  int? codigoQualificacaoSocio,
  String? qualificacaoRepresentanteLegal,
  int? codigoQualificacaoRepresentanteLegal,
  int? codigoPorte,
  }) {
  return MCnpj(
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
    cnaes_secundarios: cnaes_secundarios ?? this.cnaes_secundarios,
    qsa: qsa ?? this.qsa,
    atividade_principal: atividade_principal ?? this.atividade_principal,
    atividades_secundarias: atividades_secundarias ?? this.atividades_secundarias,
    
    situacaoEspecial: situacaoEspecial ?? this.situacaoEspecial,
    dataSituacaoEspecial: dataSituacaoEspecial ?? this.dataSituacaoEspecial,
    tipoMatrizFilial: tipoMatrizFilial ?? this.tipoMatrizFilial,
    codigoNaturezaJuridica: codigoNaturezaJuridica ?? this.codigoNaturezaJuridica,
    naturezaJuridica: naturezaJuridica ?? this.naturezaJuridica,
    abertura: abertura ?? this.abertura,
    telefone: telefone ?? this.telefone,
    situacaoCadastral: situacaoCadastral ?? this.situacaoCadastral,
    dataSituacaoCadastral: dataSituacaoCadastral ?? this.dataSituacaoCadastral,
    descricaoMotivoSituacaoCadastral: descricaoMotivoSituacaoCadastral ?? this.descricaoMotivoSituacaoCadastral,
    enteFederativoResponsavel: enteFederativoResponsavel ?? this.enteFederativoResponsavel,
    identificadorMatrizFilial: identificadorMatrizFilial ?? this.identificadorMatrizFilial,
    codigoMunicipio: codigoMunicipio ?? this.codigoMunicipio,
    codigo_municipio_ibge: codigo_municipio_ibge ?? this.codigo_municipio_ibge,
    motivoSituacaoCadastral: motivoSituacaoCadastral ?? this.motivoSituacaoCadastral,
    nomeCidadeExterior: nomeCidadeExterior ?? this.nomeCidadeExterior,
    descricaoTipoLogradouro: descricaoTipoLogradouro ?? this.descricaoTipoLogradouro,
    dddTelefone2: dddTelefone2 ?? this.dddTelefone2,
    dddFax: dddFax ?? this.dddFax,
    qualificacaoDoResponsavel: qualificacaoDoResponsavel ?? this.qualificacaoDoResponsavel,
    codigoQualificacaoDoResponsavel: codigoQualificacaoDoResponsavel ?? this.codigoQualificacaoDoResponsavel,
    descricaoPorte: descricaoPorte ?? this.descricaoPorte,
    opcaoPeloSimples: opcaoPeloSimples ?? this.opcaoPeloSimples,
    dataOpcaoPeloSimples: dataOpcaoPeloSimples ?? this.dataOpcaoPeloSimples,
    dataExclusaoDoSimples: dataExclusaoDoSimples ?? this.dataExclusaoDoSimples,
    dataOpcaoPeloMei: dataOpcaoPeloMei ?? this.dataOpcaoPeloMei,
    dataExclusaoDoMei: dataExclusaoDoMei ?? this.dataExclusaoDoMei,
    opcaoPeloMei: opcaoPeloMei ?? this.opcaoPeloMei,
    cnaesSecundarios: cnaesSecundarios ?? this.cnaesSecundarios,
    cnaeFiscal: cnaeFiscal ?? this.cnaeFiscal,
    cnaeFiscalDescricao: cnaeFiscalDescricao ?? this.cnaeFiscalDescricao,
    efr: efr ?? this.efr,
    email: email ?? this.email,
    ultimaAtualizacao: ultimaAtualizacao ?? this.ultimaAtualizacao,
    cnaeAtvSecundaria: cnaeAtvSecundaria ?? this.cnaeAtvSecundaria,
    cnaeAtvSecundariaDescricao: cnaeAtvSecundariaDescricao ?? this.cnaeAtvSecundariaDescricao,
    billingFree: billingFree ?? this.billingFree,
    billingDatabase: billingDatabase ?? this.billingDatabase,
    pais: pais ?? this.pais,
    nomeSocio: nomeSocio ?? this.nomeSocio,
    codigoPais: codigoPais ?? this.codigoPais,
    faixaEtaria: faixaEtaria ?? this.faixaEtaria,
    cnpjCpfDoSocio: cnpjCpfDoSocio ?? this.cnpjCpfDoSocio,
    qualificacaoSocio: qualificacaoSocio ?? this.qualificacaoSocio,
    codigoFaixaEtaria: codigoFaixaEtaria ?? this.codigoFaixaEtaria,
    dataEntradaSociedade: dataEntradaSociedade ?? this.dataEntradaSociedade,
    identificadorDeSocio: identificadorDeSocio ?? this.identificadorDeSocio,
    cpfRepresentanteLegal: cpfRepresentanteLegal ?? this.cpfRepresentanteLegal,
    nomeRepresentanteLegal: nomeRepresentanteLegal ?? this.nomeRepresentanteLegal,
    codigoQualificacaoSocio: codigoQualificacaoSocio ?? this.codigoQualificacaoSocio,
    qualificacaoRepresentanteLegal: qualificacaoRepresentanteLegal ?? this.qualificacaoRepresentanteLegal,
    codigoQualificacaoRepresentanteLegal: codigoQualificacaoRepresentanteLegal ?? this.codigoQualificacaoRepresentanteLegal,
    codigoPorte: codigoPorte ?? this.codigoPorte,

   );
  }

  factory MCnpj.fromJson(Map<String, dynamic> json) => _$MCnpjFromJson(json);
  Map<String, dynamic> toJson() => _$MCnpjToJson(this);

  factory MCnpj.fromJsonString(String jsonS) => MCnpj.fromJson(jsonDecode(jsonS));
  String toJsonString() => jsonEncode(_$MCnpjToJson(this));

  static List<MCnpj> lMCnpjFromJson(String str) => List<MCnpj>.from(jsonDecode(str).map((x) => MCnpj.fromJson(x)));
  static List<MCnpj> lMCnpjFromMap(List<Map<String, Object?>> lMap) => lMap.map((x) => MCnpj.fromJson(x)).toList();

  static String lMCnpjToJson(List<MCnpj> data) => jsonEncode(List<dynamic>.from(data.map((x) => x.toJson())), toEncodable: FJson.dataHoraSeralizer);

  
  static Future<MCnpj> consultarCNPJ(String selecionadaAPI, String cnpjEntrada, int days, String token) async {

    if (selecionadaAPI == 'BrasilAPI') {
      return CNPJBrasilAPI.consultarCNPJ(cnpjEntrada);
    }
     else {
      return CNPJReceitaWS.consultarCNPJ(cnpjEntrada, days, token);
    }

  }
}
