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
  int? codigoQualificacaoRepresentanteLegal;  //Pergunta: String mesmo ou 

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
  int? identificadorMatrizFilial;
  String? descricaoMatrizFilial;
  String? razaoSocial;
  String? nomeFantasia;
  int? situacaoCadastral;
  String? descricaoSituacaoCadastral;
  String? dataSituacaoCadastral;
  int? motivoSituacaoCadastral;
  String? descricaoMotivoSituacaoCadastral; //aparece no retorno, mas na descricao do site nao
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
  String? cep;
  String? uf;
  int? codigoMunicipio;
  String? municipio;
  String? dddTelefone1;
  String? dddTelefone2;
  String? dddFax;
  int? qualificacaoDoResponsavel;
  int? capitalSocial;
  String? porte;
  String? descricaoPorte;
  bool? opcaoPeloSimples;
  DateTime? dataOpcaoPeloSimples;
  DateTime? dataExclusaoDoSimples;
  bool? opcaoPeloMei;
  String? situacaoEspecial;
  DateTime? dataSituacaoEspecial;
  List<CnaesSecundarios>? cnaesSecundarios;  // codigo(int) - descricao(string)
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
      this.descricaoMotivoSituacaoCadastral = "", // ******
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
      this.cep = "",
      this.uf = "",
      this.codigoMunicipio,
      this.municipio = "",
      this.dddTelefone1 = "",
      this.dddTelefone2 = "",
      this.dddFax = "",
      this.qualificacaoDoResponsavel,
      this.capitalSocial,
      this.porte = "",
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
    String? cnpj,  //
    int? identificadorMatrizFilial,
    String? descricaoMatrizFilial, //--
    String? razaoSocial, //
    String? nomeFantasia,
    int? situacaoCadastral,
    String? descricaoSituacaoCadastral,
    String? dataSituacaoCadastral,
    int? motivoSituacaoCadastral,
    String? descricaoMotivoSituacaoCadastral,
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
    String? cep,
    String? uf,
    int? codigoMunicipio,
    String? municipio,
    String? dddTelefone1,
    String? dddTelefone2,
    String? dddFax,
    int? qualificacaoDoResponsavel,
    int? capitalSocial,
    String? porte,
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
      descricaoMotivoSituacaoCadastral: descricaoMotivoSituacaoCadastral ?? this.descricaoMotivoSituacaoCadastral,
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


    final url = Uri.parse("https://brasilapi.com.br/api/cnpj/v1/${cnpj.trim().replaceAll('.', '').replaceAll('-', '').replaceAll('/', '')}");

    final response = await http.get(url);

    if (response.statusCode == 200) {
      CNPJBrasilAPI cnpjbrasil = CNPJBrasilAPI();
      try {
        
      cnpjbrasil = CNPJBrasilAPI.fromJsonString(response.body);

      // CNPJNormal cnpjNormal = CNPJNormal();
//iguais
      // CNPJNormal.cnpj = CNPJBrasilAPI.cnpj;
      // CNPJNormal.porte = CNPJBrasilAPI.porte;
      // CNPJNormal.razao = CNPJBrasilAPI.razaoSocial;
      // CNPJNormal.logradouro = CNPJBrasilAPI.logradouro;
      // CNPJNormal.numero = CNPJBrasilAPI.numero;
      // CNPJNormal.complemento = CNPJBrasilAPI.complemento;
      // CNPJNormal.bairro = CNPJBrasilAPI.bairro;
      // CNPJNormal.cep = CNPJBrasilAPI.cep;
      // CNPJNormal.uf = CNPJBrasilAPI.uf;
      // CNPJNormal.municipio = CNPJBrasilAPI.municipio;
      // CNPJNormal.capitalSocial = CNPJBrasilAPI.capitalSocial;
      // CNPJNormal.qsa = CNPJBrasilAPI.qsa;
      // CNPJNormal.situacaoEspecial = CNPJBrasilAPI.situacaoEspecial;
      // CNPJNormal.dataSituacaoEspecial = CNPJBrasilAPI.dataSituacaoEspecial;
//equivalentes 
      // CNPJNormal.nome = CNPJBrasilAPI.nomeFantasia;
      // CNPJNormal.tipoMatrizFilial = CNPJBrasilAPI.descricaoMatrizFilial;
      // CNPJNormal.naturezaJuridica = CNPJBrasilAPI.codigoNaturezaJuridica;
      // CNPJNormal.abertura = CNPJBrasilAPI.dataInicioAtividade;
      // CNPJNormal.telefone = CNPJBrasilAPI.dddTelefone1;
      // CNPJNormal.situacaoCadastral = CNPJBrasilAPI.descricaoSituacaoCadastral;
      // CNPJNormal.dataSituacaoCadastral = CNPJBrasilAPI.dataSituacaoCadastral;
      // CNPJNormal.descricaoMotivoSituacaoCadastral = CNPJBrasilAPI.descricaoMotivoSituacaoCadastral;
      // CNPJNormal.dataSituacaoCadastral = CNPJBrasilAPI.dataSituacaoCadastral;

//particular --- podem ficar vazios no caso de ser a outra api?
      // CNPJNormal.identificadorMatrizFilial = CNPJBrasilAPI.identificadorMatrizFilial;
      // CNPJNormal.codigoMunicipio = CNPJBrasilAPI.codigoMunicipio;
      // CNPJNormal.motivoSituacaoCadastral = CNPJBrasilAPI.motivoSituacaoCadastral;
      // CNPJNormal.nomeCidadeExterior = CNPJBrasilAPI.nomeCidadeExterior;
      // CNPJNormal.descricaoTipoLogradouro = CNPJBrasilAPI.descricaoTipoLogradouro;
      // CNPJNormal.dddTelefone2 = CNPJBrasilAPI.dddTelefone2;
      // CNPJNormal.dddFax = CNPJBrasilAPI.dddFax;
      // CNPJNormal.descricaoPorte = CNPJBrasilAPI.descricaoPorte;
      // CNPJNormal.opcaoPeloSimples = CNPJBrasilAPI.opcaoPeloSimples;
      // CNPJNormal.dataOpcaoPeloSimples = CNPJBrasilAPI.dataOpcaoPeloSimples;
      // CNPJNormal.dataExclusaoDoSimples = CNPJBrasilAPI.dataExclusaoDoSimples;
      // CNPJNormal.opcaoPeloMei = CNPJBrasilAPI.opcaoPeloMei;
      // CNPJNormal.cnaesSecundarios = CNPJBrasilAPI.cnaesSecundarios;

      // CNPJNormal.cnaeFiscal = CNPJBrasilAPI.cnaeFiscal; ***
      // CNPJNormal.cnaeFiscalDescricao = CNPJBrasilAPI.cnaeFiscalDescricao; ***

      // CNPJNormal.qualificacaoDoResponsavel = CNPJBrasilAPI.qualificacaoDoResponsavel; ***


      } catch (e) {
        debugger();
      }
      return cnpjbrasil;
    } else {
      throw Exception('Aconteceu uma falha ao consultar o Cnpj na BrasilAPI.');
    }
  }


}
