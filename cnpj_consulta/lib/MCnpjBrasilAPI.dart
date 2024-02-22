// ignore_for_file: non_constant_identifier_names, unnecessary_this, avoid_print, unused_local_variable, file_names
//import 'dart:developer';
//import 'package:flutter/services.dart';

import 'dart:convert';
import 'package:cnpj_consulta/MCnpjQsa.dart';
import 'package:cnpj_consulta/MCnpjAtividadePrincipal.dart';
import 'package:cnpj_consulta/MCnpjAtividadesSecundarias.dart';
import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';
import '../funcoes/fJson.dart';
import 'MCnpj.dart';
import 'MCnpjCnaesSecundarios.dart';

part 'MCnpjBrasilAPI.g.dart';

@JsonSerializable(explicitToJson: true)
class CNPJBrasilAPI {
  String? cnpj;
  int? identificador_matriz_filial;
  String? descricao_identificador_matriz_filial;
  String? razao_social;
  String? nome_fantasia;
  int? situacao_cadastral;
  String? descricao_situacao_cadastral;
  DateTime? data_situacao_cadastral;
  int? motivo_situacao_cadastral;
  String? descricao_motivo_situacao_cadastral;
  String? ente_federativo_responsavel;
  String? nome_cidade_exterior;
  String? natureza_juridica;
  int? codigo_natureza_juridica;
  int? codigo_porte;
  DateTime? data_inicio_atividade;
  int? cnae_fiscal;
  String? cnae_fiscal_descricao;
  String? descricao_tipo_de_logradouro;
  String? logradouro;
  String? numero;
  String? complemento;
  String? bairro;
  String? cep;
  String? uf;
  int? codigo_municipio;
  String? municipio;
  int? codigo_municipio_ibge;
  String? ddd_telefone_1;
  String? ddd_telefone_2;
  String? ddd_fax;
  int? qualificacao_do_responsavel;
  int? capital_social;
  String? porte;
  String? descricao_porte;
  bool? opcao_pelo_simples;
  String? data_opcao_pelo_simples;
  String? data_exclusao_do_simples;
  String? data_exclusao_do_mei;
  String? data_opcao_pelo_mei;
  bool? opcao_pelo_mei;
  String? situacao_especial;
  String? data_situacao_especial;
  List<CnaesSecundarios>? cnaes_secundarios;
  List<Qsa>? qsa;
  List<AtividadePrincipal>? atividade_principal;
  List<AtividadesSecundarias>? atividades_secundarias;

CNPJBrasilAPI({
  this.cnpj = "",
  this.identificador_matriz_filial,
  this.descricao_identificador_matriz_filial = "",
  this.razao_social = "",
  this.nome_fantasia = "",
  this.situacao_cadastral,
  this.descricao_situacao_cadastral = "",
  this.data_situacao_cadastral,
  this.motivo_situacao_cadastral,
  this.descricao_motivo_situacao_cadastral = "",
  this.ente_federativo_responsavel = "",
  this.nome_cidade_exterior = "",
  this.natureza_juridica,
  this.codigo_natureza_juridica,
  this.codigo_porte,
  this.data_inicio_atividade,
  this.cnae_fiscal,
  this.cnae_fiscal_descricao = "",
  this.descricao_tipo_de_logradouro = "",
  this.logradouro = "",
  this.numero = "",
  this.complemento = "",
  this.bairro = "",
  this.cep = "",
  this.uf = "",
  this.codigo_municipio,
  this.municipio = "",
  this.codigo_municipio_ibge,
  this.ddd_telefone_1 = "",
  this.ddd_telefone_2 = "",
  this.ddd_fax = "",
  this.qualificacao_do_responsavel,
  this.capital_social,
  this.porte = "",
  this.descricao_porte = "",
  this.opcao_pelo_simples,
  this.data_opcao_pelo_simples = "",
  this.data_exclusao_do_simples = "",
  this.data_exclusao_do_mei,
  this.data_opcao_pelo_mei,
  this.opcao_pelo_mei,
  this.situacao_especial = "",
  this.data_situacao_especial = "",
  this.cnaes_secundarios,
  this.qsa,
  this.atividade_principal,
  this.atividades_secundarias,
  });

CNPJBrasilAPI copyWith({
  String? cnpj,
  int? identificadorMatrizFilial,
  String? descricao_identificador_matriz_filial,
  String? razao_social,
  String? nome_fantasia,
  int? situacao_cadastral,
  String? descricao_situacao_cadastral,
  DateTime? data_situacao_cadastral,
  int? motivo_situacao_cadastral,
  String? descricao_motivo_situacao_cadastral,
  String? ente_federativo_responsavel,
  String? nome_cidade_exterior,
  String? natureza_juridica,
  int? codigo_natureza_juridica,
  int? codigo_porte,
  DateTime? data_inicio_atividade,
  int? cnae_fiscal,
  String? cnae_fiscal_descricao,
  String? descricao_tipo_de_logradouro,
  String? logradouro,
  String? numero,
  String? complemento,
  String? bairro,
  String? cep,
  String? uf,
  int? codigo_municipio,
  String? municipio,
  int? codigo_municipio_ibge,
  String? ddd_telefone_1,
  String? ddd_telefone_2,
  String? ddd_fax,
  int? qualificacao_do_responsavel,
  int? capital_social,
  String? porte,
  String? descricao_porte,
  bool? opcao_pelo_simples,
  String? data_opcao_pelo_simples,
  String? data_exclusao_do_simples,
  String? data_exclusao_do_mei,
  String? data_opcao_pelo_mei,
  bool? opcao_pelo_mei,
  String? situacao_especial,
  String? data_situacao_especial,
  List<CnaesSecundarios>? cnaes_secundarios,
  List<Qsa>? qsa,
  List<AtividadePrincipal>? atividade_principal,
  List<AtividadesSecundarias>? atividades_secundarias,
  }) {
  return CNPJBrasilAPI(
    cnpj: cnpj ?? this.cnpj,
    identificador_matriz_filial: identificador_matriz_filial ?? this.identificador_matriz_filial,
    descricao_identificador_matriz_filial: descricao_identificador_matriz_filial ?? this.descricao_identificador_matriz_filial,
    razao_social: razao_social ?? this.razao_social,
    nome_fantasia: nome_fantasia ?? this.nome_fantasia,
    situacao_cadastral: situacao_cadastral ?? this.situacao_cadastral,
    descricao_situacao_cadastral: descricao_situacao_cadastral ?? this.descricao_situacao_cadastral,
    data_situacao_cadastral: data_situacao_cadastral ?? this.data_situacao_cadastral,
    motivo_situacao_cadastral: motivo_situacao_cadastral ?? this.motivo_situacao_cadastral,
    descricao_motivo_situacao_cadastral: descricao_motivo_situacao_cadastral ?? this.descricao_motivo_situacao_cadastral,
    ente_federativo_responsavel: ente_federativo_responsavel ?? this.ente_federativo_responsavel,
    nome_cidade_exterior: nome_cidade_exterior ?? this.nome_cidade_exterior,
    natureza_juridica: natureza_juridica ?? this.natureza_juridica,
    codigo_natureza_juridica: codigo_natureza_juridica ?? this.codigo_natureza_juridica,
    codigo_porte: codigo_porte ?? this.codigo_porte,
    data_inicio_atividade: data_inicio_atividade ?? this.data_inicio_atividade,
    cnae_fiscal: cnae_fiscal ?? this.cnae_fiscal,
    cnae_fiscal_descricao: cnae_fiscal_descricao ?? this.cnae_fiscal_descricao,
    descricao_tipo_de_logradouro: descricao_tipo_de_logradouro ?? this.descricao_tipo_de_logradouro,
    logradouro: logradouro ?? this.logradouro,
    numero: numero ?? this.numero,
    complemento: complemento ?? this.complemento,
    bairro: bairro ?? this.bairro,
    cep: cep ?? this.cep,
    uf: uf ?? this.uf,
    codigo_municipio: codigo_municipio ?? this.codigo_municipio,
    municipio: municipio ?? this.municipio,
    codigo_municipio_ibge: codigo_municipio_ibge ?? this.codigo_municipio_ibge,
    ddd_telefone_1: ddd_telefone_1 ?? this.ddd_telefone_1,
    ddd_telefone_2: ddd_telefone_2 ?? this.ddd_telefone_2,
    ddd_fax: ddd_fax ?? this.ddd_fax,
    qualificacao_do_responsavel: qualificacao_do_responsavel ?? this.qualificacao_do_responsavel,
    capital_social: capital_social ?? this.capital_social,
    porte: porte ?? this.porte,
    descricao_porte: descricao_porte ?? this.descricao_porte,
    opcao_pelo_simples: opcao_pelo_simples ?? this.opcao_pelo_simples,
    data_opcao_pelo_simples: data_opcao_pelo_simples ?? this.data_opcao_pelo_simples,
    data_exclusao_do_simples: data_exclusao_do_simples ?? this.data_exclusao_do_simples,
    data_exclusao_do_mei: data_exclusao_do_mei ?? this.data_exclusao_do_mei,
    data_opcao_pelo_mei: data_opcao_pelo_mei ?? this.data_opcao_pelo_mei,
    opcao_pelo_mei: opcao_pelo_mei ?? this.opcao_pelo_mei,
    situacao_especial: situacao_especial ?? this.situacao_especial,
    data_situacao_especial: data_situacao_especial ?? this.data_situacao_especial,
    cnaes_secundarios: cnaes_secundarios ?? this.cnaes_secundarios,
    qsa: qsa ?? this.qsa,
    atividade_principal: atividade_principal ?? this.atividade_principal,
    atividades_secundarias: atividades_secundarias ?? this.atividades_secundarias,
 
   );
  }

  factory CNPJBrasilAPI.fromJson(Map<String, dynamic> json) => _$CNPJBrasilAPIFromJson(json);
  Map<String, dynamic> toJson() => _$CNPJBrasilAPIToJson(this);

  factory CNPJBrasilAPI.fromJsonString(String jsonS) => CNPJBrasilAPI.fromJson(jsonDecode(jsonS));
  String toJsonString() => jsonEncode(_$CNPJBrasilAPIToJson(this));

  static List<CNPJBrasilAPI> lCNPJBrasilAPIFromJson(String str) => List<CNPJBrasilAPI>.from(jsonDecode(str).map((x) => CNPJBrasilAPI.fromJson(x)));
  static List<CNPJBrasilAPI> lCNPJBrasilAPIFromMap(List<Map<String, Object?>> lMap) => lMap.map((x) => CNPJBrasilAPI.fromJson(x)).toList();

  static String lCNPJBrasilAPIToJson(List<CNPJBrasilAPI> data) => jsonEncode(List<dynamic>.from(data.map((x) => x.toJson())), toEncodable: FJson.dataHoraSeralizer);

  static Future<CNPJNormal> consultarCNPJ(String cnpj) async {

    final url = Uri.parse("https://brasilapi.com.br/api/cnpj/v1/${cnpj.trim().replaceAll('.', '').replaceAll('-', '').replaceAll('/', '')}");

    final response = await http.get(url);

    CNPJNormal cnpjNormal = CNPJNormal();
    String sMensagem = "";
    CNPJBrasilAPI cnpjbrasil = CNPJBrasilAPI();
    
    //try {
    //  await Clipboard.setData(ClipboardData(text: response.body));
    cnpjbrasil = CNPJBrasilAPI.fromJsonString(response.body);
    cnpjNormal = CNPJNormal.fromJsonString(response.body);
    

//iguais
    cnpjNormal.cnpj = cnpjbrasil.cnpj;
    cnpjNormal.porte = cnpjbrasil.porte;
    cnpjNormal.razao = cnpjbrasil.razao_social; 
    cnpjNormal.logradouro = cnpjbrasil.logradouro;
    cnpjNormal.numero = cnpjbrasil.numero;
    cnpjNormal.complemento = cnpjbrasil.complemento;
    cnpjNormal.bairro = cnpjbrasil.bairro;
    cnpjNormal.cep = cnpjbrasil.cep;
    cnpjNormal.uf = cnpjbrasil.uf;
    cnpjNormal.municipio = cnpjbrasil.municipio;
    cnpjNormal.capitalSocial = cnpjbrasil.capital_social;
    cnpjNormal.situacaoEspecial = cnpjbrasil.situacao_especial;

    if(cnpjbrasil.data_situacao_especial != ""){
      cnpjNormal.dataSituacaoEspecial = DateTime.tryParse(cnpjbrasil.data_situacao_especial ?? '');
    }

//equivalentes 
    cnpjNormal.nome = cnpjbrasil.nome_fantasia;
    cnpjNormal.tipoMatrizFilial = cnpjbrasil.descricao_identificador_matriz_filial;
    cnpjNormal.naturezaJuridica = cnpjbrasil.natureza_juridica;
    cnpjNormal.codigoNaturezaJuridica = cnpjbrasil.codigo_natureza_juridica;
    cnpjNormal.abertura = cnpjbrasil.data_inicio_atividade;
    cnpjNormal.telefone = cnpjbrasil.ddd_telefone_1;
    cnpjNormal.situacaoCadastral = cnpjbrasil.descricao_situacao_cadastral;
    cnpjNormal.dataSituacaoCadastral = cnpjbrasil.data_situacao_cadastral;
    cnpjNormal.descricaoMotivoSituacaoCadastral = cnpjbrasil.descricao_motivo_situacao_cadastral;
//particular
    cnpjNormal.identificadorMatrizFilial = cnpjbrasil.identificador_matriz_filial;
    cnpjNormal.codigoMunicipio = cnpjbrasil.codigo_municipio;
    cnpjNormal.motivoSituacaoCadastral = cnpjbrasil.motivo_situacao_cadastral;
    cnpjNormal.nomeCidadeExterior = cnpjbrasil.nome_cidade_exterior;
    cnpjNormal.descricaoTipoLogradouro = cnpjbrasil.descricao_tipo_de_logradouro;
    cnpjNormal.dddTelefone2 = cnpjbrasil.ddd_telefone_2;
    cnpjNormal.dddFax = cnpjbrasil.ddd_fax;
    cnpjNormal.descricaoPorte = cnpjbrasil.descricao_porte;
    cnpjNormal.opcaoPeloSimples = cnpjbrasil.opcao_pelo_simples;
    cnpjNormal.codigoPorte = cnpjbrasil.codigo_porte;
    cnpjNormal.codigoQualificacaoDoResponsavel = cnpjbrasil.qualificacao_do_responsavel;

    if(cnpjbrasil.data_opcao_pelo_simples != ""){
     cnpjNormal.dataOpcaoPeloSimples = DateTime.tryParse(cnpjbrasil.data_opcao_pelo_simples ?? '');
    }

    if(cnpjbrasil.data_exclusao_do_simples != ""){
    cnpjNormal.dataExclusaoDoSimples = DateTime.tryParse(cnpjbrasil.data_exclusao_do_simples ?? '');
    }

    if(cnpjbrasil.data_opcao_pelo_mei != ""){
    cnpjNormal.dataOpcaoPeloSimples = DateTime.tryParse(cnpjbrasil.data_opcao_pelo_simples ?? '');
    }

    if(cnpjbrasil.data_exclusao_do_mei != ""){
    cnpjNormal.dataExclusaoDoSimples = DateTime.tryParse(cnpjbrasil.data_exclusao_do_simples ?? '');
    }

    cnpjNormal.opcaoPeloMei = cnpjbrasil.opcao_pelo_mei;
    cnpjNormal.cnaeFiscal = cnpjbrasil.cnae_fiscal; 
    cnpjNormal.cnaeFiscalDescricao = cnpjbrasil.cnae_fiscal_descricao;
    
    cnpjNormal.cnaeAtvSecundaria = cnpjbrasil.cnaes_secundarios![0].codigo;
    cnpjNormal.cnaeAtvSecundariaDescricao = cnpjbrasil.cnaes_secundarios![0].descricao;

    /*} catch (e) {
      debugger();
    }*/

    if(response.statusCode != 200){
      sMensagem = "Aconteceu uma falha ao consultar o Cnpj na Brasil Api.";
      sMensagem += "\n(${response.statusCode})";
    }

    return cnpjNormal;

  }

}
