import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';

import 'cnpj.dart';

part 'CNPJBrasilAPI.g.dart';

@JsonSerializable(explicitToJson: true)



//-------------------------
class CnaesSecundarios {
  int? codigo;
  String? descricao;

  CnaesSecundarios({this.codigo, this.descricao});

  CnaesSecundarios.fromJson(Map<String, dynamic> json) {
    codigo = json['codigo'];
    descricao = json['descricao'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['codigo'] = this.codigo;
    data['descricao'] = this.descricao;
    return data;
  }
}

class Qsa {
  int? identificadorDeSocio;
  String? nomeSocio;
  String? cnpjCpfDoSocio;
  int? codigoQualificacaoSocio;
  int? percentualCapitalSocial;
  String? dataEntradaSociedade;
  Null? cpfRepresentanteLegal;
  Null? nomeRepresentanteLegal;
  Null? codigoQualificacaoRepresentanteLegal;

  Qsa(
      {this.identificadorDeSocio,
      this.nomeSocio,
      this.cnpjCpfDoSocio,
      this.codigoQualificacaoSocio,
      this.percentualCapitalSocial,
      this.dataEntradaSociedade,
      this.cpfRepresentanteLegal,
      this.nomeRepresentanteLegal,
      this.codigoQualificacaoRepresentanteLegal});

  Qsa.fromJson(Map<String, dynamic> json) {
    identificadorDeSocio = json['identificador_de_socio'];
    nomeSocio = json['nome_socio'];
    cnpjCpfDoSocio = json['cnpj_cpf_do_socio'];
    codigoQualificacaoSocio = json['codigo_qualificacao_socio'];
    percentualCapitalSocial = json['percentual_capital_social'];
    dataEntradaSociedade = json['data_entrada_sociedade'];
    cpfRepresentanteLegal = json['cpf_representante_legal'];
    nomeRepresentanteLegal = json['nome_representante_legal'];
    codigoQualificacaoRepresentanteLegal =
        json['codigo_qualificacao_representante_legal'];
  }
}
//-------------------------

class CNPJBrasilAPI {

  String? cnpj;
  int? identificadorMatrizFilial;
  String? descricaoMatrizFilial;
  String? razaoSocial;
  String? nomeFantasia;
  int? situacaoCadastral;
  String? descricaoSituacaoCadastral;
  String? dataSituacaoCadastral;
  int? motivoSituacaoCadastral;
  String? nomeCidadeExterior;
  int? codigoNaturezaJuridica;
  String? dataInicioAtividade;
  int? cnaeFiscal;
  String? cnaeFiscalDescricao;
  String? descricaoTipoLogradouro;
  String? logradouro;
  String? numero;
  String? complemento;
  String? bairro;
  int? cep;
  String? uf;
  int? codigoMunicipio;
  String? municipio;
  String? dddTelefone1;
  String? dddTelefone2;
  String? dddFax;
  int? qualificacaoDoResponsavel;
  int? capitalSocial;
  int? porte;
  String? descricaoPorte;
  bool? opcaoPeloSimples;
  DateTime? dataOpcaoPeloSimples;
  DateTime? dataExclusaoDoSimples;
  bool? opcaoPeloMei;
  String? situacaoEspecial;
  DateTime? dataSituacaoEspecial;
  List<CnaesSecundarios>? cnaesSecundarios;
  List<Qsa>? qsa;

CNPJBrasilAPI({
      this.cnpj = "",
      this.identificadorMatrizFilial,
      this.descricaoMatrizFilial = "",
      this.razaoSocial = "",
      this.nomeFantasia = "",
      this.situacaoCadastral,
      this.descricaoSituacaoCadastral = "",
      this.dataSituacaoCadastral = "",
      this.motivoSituacaoCadastral,
      this.nomeCidadeExterior = "",
      this.codigoNaturezaJuridica,
      this.dataInicioAtividade = "",
      this.cnaeFiscal,
      this.cnaeFiscalDescricao = "",
      this.descricaoTipoLogradouro = "",
      this.logradouro = "",
      this.numero = "",
      this.complemento = "",
      this.bairro = "",
      this.cep,
      this.uf = "",
      this.codigoMunicipio,
      this.municipio = "",
      this.dddTelefone1 = "",
      this.dddTelefone2 = "",
      this.dddFax = "",
      this.qualificacaoDoResponsavel,
      this.capitalSocial,
      this.porte,
      this.descricaoPorte = "",
      this.opcaoPeloSimples,
      this.dataOpcaoPeloSimples,
      this.dataExclusaoDoSimples,
      this.opcaoPeloMei,
      this.situacaoEspecial = "",
      this.dataSituacaoEspecial,
      this.cnaesSecundarios,
      this.qsa});

  CNPJBrasilAPI copyWith({
    String? cnpj,
    int? identificadorMatrizFilial,
    String? descricaoMatrizFilial,
    String? razaoSocial,
    String? nomeFantasia,
    int? situacaoCadastral,
    String? descricaoSituacaoCadastral,
    String? dataSituacaoCadastral,
    int? motivoSituacaoCadastral,
    String? nomeCidadeExterior,
    int? codigoNaturezaJuridica,
    String? dataInicioAtividade,
    int? cnaeFiscal,
    String? cnaeFiscalDescricao,
    String? descricaoTipoLogradouro,
    String? logradouro,
    String? numero,
    String? complemento,
    String? bairro,
    int? cep,
    String? uf,
    int? codigoMunicipio,
    String? municipio,
    String? dddTelefone1,
    String? dddTelefone2,
    String? dddFax,
    int? qualificacaoDoResponsavel,
    int? capitalSocial,
    int? porte,
    String? descricaoPorte,
    bool? opcaoPeloSimples,
    DateTime? dataOpcaoPeloSimples,
    DateTime? dataExclusaoDoSimples,
    bool? opcaoPeloMei,
    String? situacaoEspecial,
    DateTime? dataSituacaoEspecial,
    List<CnaesSecundarios>? cnaesSecundarios,
    List<Qsa>? qsa,
  }) {
    return CNPJBrasilAPI(
      cnpj: cnpj ?? this.cnpj,
      identificadorMatrizFilial: identificadorMatrizFilial ?? this.identificadorMatrizFilial,
      descricaoMatrizFilial: descricaoMatrizFilial ?? this.descricaoMatrizFilial,
      razaoSocial: razaoSocial ?? this.razaoSocial,
      nomeFantasia: nomeFantasia ?? this.nomeFantasia,
      situacaoCadastral: situacaoCadastral ?? this.situacaoCadastral,
      descricaoSituacaoCadastral: descricaoSituacaoCadastral ?? this.descricaoSituacaoCadastral,
      dataSituacaoCadastral: dataSituacaoCadastral ?? this.dataSituacaoCadastral,
      motivoSituacaoCadastral: motivoSituacaoCadastral ?? this.motivoSituacaoCadastral,
      nomeCidadeExterior: nomeCidadeExterior ?? this.nomeCidadeExterior,
      codigoNaturezaJuridica: codigoNaturezaJuridica ?? this.codigoNaturezaJuridica,
      dataInicioAtividade: dataInicioAtividade ?? this.dataInicioAtividade,
      cnaeFiscal: cnaeFiscal ?? this.cnaeFiscal,
      cnaeFiscalDescricao: cnaeFiscalDescricao ?? this.cnaeFiscalDescricao,
      descricaoTipoLogradouro: descricaoTipoLogradouro ?? this.descricaoTipoLogradouro,
      logradouro: logradouro ?? this.logradouro,
      numero: numero ?? this.numero,
      complemento: complemento ?? this.complemento,
      bairro: bairro ?? this.bairro,
      cep: cep ?? this.cep,
      uf: uf ?? this.uf,
      codigoMunicipio: codigoMunicipio ?? this.codigoMunicipio,
      municipio: municipio ?? this.municipio,
      dddTelefone1: dddTelefone1 ?? this.dddTelefone1,
      dddTelefone2: dddTelefone2 ?? this.dddTelefone2,
      dddFax: dddFax ?? this.dddFax,
      qualificacaoDoResponsavel: qualificacaoDoResponsavel ?? this.qualificacaoDoResponsavel,
      capitalSocial: capitalSocial ?? this.capitalSocial,
      porte: porte ?? this.porte,
      descricaoPorte: descricaoPorte ?? this.descricaoPorte,
      opcaoPeloSimples: opcaoPeloSimples ?? this.opcaoPeloSimples,
      dataOpcaoPeloSimples: dataOpcaoPeloSimples ?? this.dataOpcaoPeloSimples,
      dataExclusaoDoSimples: dataExclusaoDoSimples ?? this.dataExclusaoDoSimples,
      opcaoPeloMei: opcaoPeloMei ?? this.opcaoPeloMei,
      situacaoEspecial: situacaoEspecial ?? this.situacaoEspecial,
      dataSituacaoEspecial: dataSituacaoEspecial ?? this.dataSituacaoEspecial,
      cnaesSecundarios: cnaesSecundarios ?? this.cnaesSecundarios,
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

  static Future<CNPJBrasilAPI> consultarCNPJ(String cnpj) async {

    final url = Uri.parse("https://brasilapi.com.br/api/cnpj/v1/{cnpj.trim().replaceAll('.', '').replaceAll('-', '').replaceAll('/', '')}");

    final response = await http.get(url);

    if (response.statusCode == 200) {
      CNPJBrasilAPI cnpjbrasil = CNPJBrasilAPI.fromJsonString(response.body);
      return cnpjbrasil;
    } else {
      throw Exception('Aconteceu uma falha ao consultar o Cnpj na BrasilAPI.');
    }
  }


}
