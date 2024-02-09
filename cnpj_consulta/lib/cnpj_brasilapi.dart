// ignore_for_file: non_constant_identifier_names, unnecessary_this

import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';
import '../funcoes/fJson.dart';
import 'cnpj_normal.dart';

part 'cnpj_brasilapi.g.dart';

//-------------------------
@JsonSerializable(explicitToJson: true)
class CnaesSecundarios {
  int? codigo;
  String? descricao;

	CnaesSecundarios({
		  this.codigo,
		  this.descricao = "",
  });

  CnaesSecundarios copyWith({
        int? codigo,
        String? descricao,
    }) {
      return CnaesSecundarios(
        codigo: codigo ?? this.codigo,
        descricao: descricao ?? this.descricao,
    );
    }

  factory CnaesSecundarios.fromJson(Map<String, dynamic> json) => _$CnaesSecundariosFromJson(json);
  Map<String, dynamic> toJson() => _$CnaesSecundariosToJson(this);

  factory CnaesSecundarios.fromJsonString(String jsonS) => CnaesSecundarios.fromJson(jsonDecode(jsonS));
  String toJsonString() => jsonEncode(_$CnaesSecundariosToJson(this));

  static List<CnaesSecundarios> lCnaesSecundariosFromJson(String str) => List<CnaesSecundarios>.from(jsonDecode(str).map((x) => CnaesSecundarios.fromJson(x)));
  static List<CnaesSecundarios> lCnaesSecundariosFromMap(List<Map<String, Object?>> lMap) => lMap.map((x) => CnaesSecundarios.fromJson(x)).toList();

  static String lCnaesSecundariosToJson(List<CnaesSecundarios> data) => jsonEncode(List<dynamic>.from(data.map((x) => x.toJson())), toEncodable: FJson.dataHoraSeralizer);

}

@JsonSerializable(explicitToJson: true)
class Qsa {
  int? identificadorDeSocio;
  String? nomeSocio;
  String? cnpjCpfDoSocio;
  int? codigoQualificacaoSocio;
  int? percentualCapitalSocial;
  String? dataEntradaSociedade;
  String? cpfRepresentanteLegal;
  String? nomeRepresentanteLegal;
  int? codigoQualificacaoRepresentanteLegal;  

  Qsa(
      {this.identificadorDeSocio,
      this.nomeSocio = "",
      this.cnpjCpfDoSocio = "",
      this.codigoQualificacaoSocio,
      this.percentualCapitalSocial,
      this.dataEntradaSociedade = "",
      this.cpfRepresentanteLegal = "",
      this.nomeRepresentanteLegal = "",
      this.codigoQualificacaoRepresentanteLegal,
      });

  Qsa copyWith({
    int? identificadorDeSocio,
    String? nomeSocio,
    String? cnpjCpfDoSocio,
    int? codigoQualificacaoSocio,
    int? percentualCapitalSocial,
    String? dataEntradaSociedade,
    String? cpfRepresentanteLegal,
    String? nomeRepresentanteLegal,
    int? codigoQualificacaoRepresentanteLegal,
	}) {
	  return Qsa(
      identificadorDeSocio: identificadorDeSocio ?? this.identificadorDeSocio,
      nomeSocio: nomeSocio ?? this.nomeSocio,
      cnpjCpfDoSocio: cnpjCpfDoSocio ?? this.cnpjCpfDoSocio,
      codigoQualificacaoSocio: codigoQualificacaoSocio ?? this.codigoQualificacaoSocio,
      percentualCapitalSocial: percentualCapitalSocial ?? this.percentualCapitalSocial,
      dataEntradaSociedade: dataEntradaSociedade ?? this.dataEntradaSociedade,
      cpfRepresentanteLegal: cpfRepresentanteLegal ?? this.cpfRepresentanteLegal,
      nomeRepresentanteLegal: nomeRepresentanteLegal ?? this.nomeRepresentanteLegal,
      codigoQualificacaoRepresentanteLegal: codigoQualificacaoRepresentanteLegal ?? this.codigoQualificacaoRepresentanteLegal,
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
//-------------------------


@JsonSerializable(explicitToJson: true)
class CNPJBrasilAPI {

  String? cnpj;
  int? identificador_matriz_filial;
  String? descricao_matriz_filial;
  String? razao_social;
  String? nome_fantasia;
  int? situacao_cadastral;
  String? descricao_situacao_cadastral;
  String? data_situacao_cadastral;
  int? motivo_situacao_cadastral;
  String? descricao_motivo_situacao_cadastral;
  String? nome_cidade_exterior;

  String? natureza_juridica;
  int? codigo_natureza_juridica;

  String? data_inicio_atividade;
  int? cnae_fiscal;
  String? cnae_fiscal_descricao;
  String? descricao_tipo_logradouro;
  String? logradouro;
  String? numero;
  String? complemento;
  String? bairro;
  String? cep;
  String? uf;
  int? codigo_municipio;
  String? municipio;
  String? ddd_telefone1;
  String? ddd_telefone2;
  String? ddd_fax;
  int? qualificacao_do_responsavel;
  int? capital_social;
  String? porte;
  String? descricao_porte;
  bool? opcao_pelo_simples;
  DateTime? data_opcao_pelo_simples;
  DateTime? data_exclusao_do_simples;
  bool? opcao_pelo_mei;
  String? situacao_especial;
  String? data_situacao_especial;
  List<CnaesSecundarios>? cnaes_secundarios;
  List<Qsa>? qsa;

CNPJBrasilAPI({
      this.cnpj = "",
      this.identificador_matriz_filial,
      this.descricao_matriz_filial = "",
      this.razao_social = "",
      this.nome_fantasia = "",
      this.situacao_cadastral,
      this.descricao_situacao_cadastral = "",
      this.data_situacao_cadastral = "",
      this.motivo_situacao_cadastral,
      this.descricao_motivo_situacao_cadastral = "", // ******
      this.nome_cidade_exterior = "",
      this.natureza_juridica,
      this.codigo_natureza_juridica,
      this.data_inicio_atividade = "",
      this.cnae_fiscal,
      this.cnae_fiscal_descricao = "",
      this.descricao_tipo_logradouro = "",
      this.logradouro = "",
      this.numero = "",
      this.complemento = "",
      this.bairro = "",
      this.cep = "",
      this.uf = "",
      this.codigo_municipio,
      this.municipio = "",
      this.ddd_telefone1 = "",
      this.ddd_telefone2 = "",
      this.ddd_fax = "",
      this.qualificacao_do_responsavel,
      this.capital_social,
      this.porte = "",
      this.descricao_porte = "",
      this.opcao_pelo_simples,
      this.data_opcao_pelo_simples,
      this.data_exclusao_do_simples,
      this.opcao_pelo_mei,
      this.situacao_especial = "",
      this.data_situacao_especial = "",
      this.cnaes_secundarios,
      this.qsa,
      });

  CNPJBrasilAPI copyWith({
    String? cnpj,  //
    int? identificadorMatrizFilial,
    String? descricao_matriz_filial, //--
    String? razao_social, //
    String? nome_fantasia,
    int? situacao_cadastral,
    String? descricao_situacao_cadastral,
    String? data_situacao_cadastral,
    int? motivo_situacao_cadastral,
    String? descricao_motivo_situacao_cadastral,
    String? nome_cidade_exterior,
    String? natureza_juridica,
    int? codigo_natureza_juridica,
    String? data_inicio_atividade,
    int? cnae_fiscal,
    String? cnae_fiscal_descricao,
    String? descricao_tipo_logradouro,
    String? logradouro,
    String? numero,
    String? complemento,
    String? bairro,
    String? cep,
    String? uf,
    int? codigo_municipio,
    String? municipio,
    String? ddd_telefone1,
    String? ddd_telefone2,
    String? ddd_fax,
    int? qualificacao_do_responsavel,
    int? capital_social,
    String? porte,
    String? descricao_porte,
    bool? opcao_pelo_simples,
    DateTime? data_opcao_pelo_simples,
    DateTime? data_exclusao_do_simples,
    bool? opcao_pelo_mei,
    String? situacao_especial,
    String? data_situacao_especial,
    List<CnaesSecundarios>? cnaes_secundarios,
    List<Qsa>? qsa,
  }) {
    return CNPJBrasilAPI(
      cnpj: cnpj ?? this.cnpj,
      identificador_matriz_filial: identificador_matriz_filial ?? this.identificador_matriz_filial,
      descricao_matriz_filial: descricao_matriz_filial ?? this.descricao_matriz_filial,
      razao_social: razao_social ?? this.razao_social,
      nome_fantasia: nome_fantasia ?? this.nome_fantasia,
      situacao_cadastral: situacao_cadastral ?? this.situacao_cadastral,
      descricao_situacao_cadastral: descricao_situacao_cadastral ?? this.descricao_situacao_cadastral,
      data_situacao_cadastral: data_situacao_cadastral ?? this.data_situacao_cadastral,
      motivo_situacao_cadastral: motivo_situacao_cadastral ?? this.motivo_situacao_cadastral,
      descricao_motivo_situacao_cadastral: descricao_motivo_situacao_cadastral ?? this.descricao_motivo_situacao_cadastral,
      nome_cidade_exterior: nome_cidade_exterior ?? this.nome_cidade_exterior,
      natureza_juridica: natureza_juridica ?? this.natureza_juridica,
      codigo_natureza_juridica: codigo_natureza_juridica ?? this.codigo_natureza_juridica,
      data_inicio_atividade: data_inicio_atividade ?? this.data_inicio_atividade,
      cnae_fiscal: cnae_fiscal ?? this.cnae_fiscal,
      cnae_fiscal_descricao: cnae_fiscal_descricao ?? this.cnae_fiscal_descricao,
      descricao_tipo_logradouro: descricao_tipo_logradouro ?? this.descricao_tipo_logradouro,
      logradouro: logradouro ?? this.logradouro,
      numero: numero ?? this.numero,
      complemento: complemento ?? this.complemento,
      bairro: bairro ?? this.bairro,
      cep: cep ?? this.cep,
      uf: uf ?? this.uf,
      codigo_municipio: codigo_municipio ?? this.codigo_municipio,
      municipio: municipio ?? this.municipio,
      ddd_telefone1: ddd_telefone1 ?? this.ddd_telefone1,
      ddd_telefone2: ddd_telefone2 ?? this.ddd_telefone2,
      ddd_fax: ddd_fax ?? this.ddd_fax,
      qualificacao_do_responsavel: qualificacao_do_responsavel ?? this.qualificacao_do_responsavel,
      capital_social: capital_social ?? this.capital_social,
      porte: porte ?? this.porte,
      descricao_porte: descricao_porte ?? this.descricao_porte,
      opcao_pelo_simples: opcao_pelo_simples ?? this.opcao_pelo_simples,
      data_opcao_pelo_simples: data_opcao_pelo_simples ?? this.data_opcao_pelo_simples,
      data_exclusao_do_simples: data_exclusao_do_simples ?? this.data_exclusao_do_simples,
      opcao_pelo_mei: opcao_pelo_mei ?? this.opcao_pelo_mei,
      situacao_especial: situacao_especial ?? this.situacao_especial,
      data_situacao_especial: data_situacao_especial ?? this.data_situacao_especial,
      cnaes_secundarios: cnaes_secundarios ?? this.cnaes_secundarios,
      qsa: qsa ?? this.qsa,
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

    if (response.statusCode == 200) {
      CNPJBrasilAPI cnpjbrasil = CNPJBrasilAPI();
      //try {
        
      cnpjbrasil = CNPJBrasilAPI.fromJsonString(response.body);

       CNPJNormal cnpjNormal = CNPJNormal();
       CnaesSecundarios cnaeAtvSecundaria = CnaesSecundarios();

//iguais
       cnpjNormal.cnpj = cnpjbrasil.cnpj;
       cnpjNormal.porte = cnpjbrasil.porte;
       cnpjNormal.razao = cnpjbrasil.razao_social; //
       cnpjNormal.logradouro = cnpjbrasil.logradouro;
       cnpjNormal.numero = cnpjbrasil.numero;
       cnpjNormal.complemento = cnpjbrasil.complemento;
       cnpjNormal.bairro = cnpjbrasil.bairro;
       cnpjNormal.cep = cnpjbrasil.cep;
       cnpjNormal.uf = cnpjbrasil.uf;
       cnpjNormal.municipio = cnpjbrasil.municipio;
       cnpjNormal.capitalSocial = cnpjbrasil.capital_social;//
       //cnpjNormal.qsa = cnpjbrasil.qsa;
       cnpjNormal.situacaoEspecial = cnpjbrasil.situacao_especial;

       if(cnpjbrasil.data_situacao_especial != ""){
        cnpjNormal.dataSituacaoEspecial = DateTime.tryParse(cnpjbrasil.data_situacao_especial ?? '');
       }

//equivalentes 
       cnpjNormal.nome = cnpjbrasil.nome_fantasia; //
       cnpjNormal.tipoMatrizFilial = cnpjbrasil.descricao_matriz_filial; //
      
       cnpjNormal.naturezaJuridica = cnpjbrasil.natureza_juridica; //
       cnpjNormal.codigoNaturezaJuridica = cnpjbrasil.codigo_natureza_juridica; //
       cnpjNormal.abertura = cnpjbrasil.data_inicio_atividade; //
       cnpjNormal.telefone = cnpjbrasil.ddd_telefone1; //
       cnpjNormal.situacaoCadastral = cnpjbrasil.descricao_situacao_cadastral;//
       cnpjNormal.dataSituacaoCadastral = cnpjbrasil.data_situacao_cadastral;
       cnpjNormal.descricaoMotivoSituacaoCadastral = cnpjbrasil.descricao_motivo_situacao_cadastral;

//particular
       cnpjNormal.identificadorMatrizFilial = cnpjbrasil.identificador_matriz_filial;
       cnpjNormal.codigoMunicipio = cnpjbrasil.codigo_municipio;
       cnpjNormal.motivoSituacaoCadastral = cnpjbrasil.motivo_situacao_cadastral;
       cnpjNormal.nomeCidadeExterior = cnpjbrasil.nome_cidade_exterior;
       cnpjNormal.descricaoTipoLogradouro = cnpjbrasil.descricao_tipo_logradouro;
       cnpjNormal.dddTelefone2 = cnpjbrasil.ddd_telefone2;
       cnpjNormal.dddFax = cnpjbrasil.ddd_fax;
       cnpjNormal.descricaoPorte = cnpjbrasil.descricao_porte;
       cnpjNormal.opcaoPeloSimples = cnpjbrasil.opcao_pelo_simples;
       cnpjNormal.dataOpcaoPeloSimples = cnpjbrasil.data_opcao_pelo_simples;
       cnpjNormal.dataExclusaoDoSimples = cnpjbrasil.data_exclusao_do_simples;
       cnpjNormal.opcaoPeloMei = cnpjbrasil.opcao_pelo_mei;

       cnpjNormal.cnaeFiscal = cnpjbrasil.cnae_fiscal; 
       cnpjNormal.cnaeFiscalDescricao = cnpjbrasil.cnae_fiscal_descricao;
       cnpjNormal.cnaeAtvSecundaria = cnaeAtvSecundaria.codigo; 
       cnpjNormal.cnaeAtvSecundariaDescricao = cnaeAtvSecundaria.descricao;

       cnpjNormal.qualificacaoDoResponsavel = cnpjbrasil.qualificacao_do_responsavel;
      

      /*} catch (e) {
        debugger();
      }
      */

      return cnpjNormal;
    } else {
      throw Exception('Aconteceu uma falha ao consultar o Cnpj na BrasilAPI.');
    }
  }


}
