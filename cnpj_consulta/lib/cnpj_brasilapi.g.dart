// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cnpj_brasilapi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CnaesSecundarios _$CnaesSecundariosFromJson(Map<String, dynamic> json) =>
    CnaesSecundarios(
      codigo: json['codigo'] as int?,
      descricao: json['descricao'] as String? ?? "",
    );

Map<String, dynamic> _$CnaesSecundariosToJson(CnaesSecundarios instance) =>
    <String, dynamic>{
      'codigo': instance.codigo,
      'descricao': instance.descricao,
    };

Qsa _$QsaFromJson(Map<String, dynamic> json) => Qsa(
      identificadorDeSocio: json['identificadorDeSocio'] as int?,
      nomeSocio: json['nomeSocio'] as String? ?? "",
      cnpjCpfDoSocio: json['cnpjCpfDoSocio'] as String? ?? "",
      codigoQualificacaoSocio: json['codigoQualificacaoSocio'] as int?,
      percentualCapitalSocial: json['percentualCapitalSocial'] as int?,
      dataEntradaSociedade: json['dataEntradaSociedade'] as String? ?? "",
      cpfRepresentanteLegal: json['cpfRepresentanteLegal'] as String? ?? "",
      nomeRepresentanteLegal: json['nomeRepresentanteLegal'] as String? ?? "",
      codigoQualificacaoRepresentanteLegal:
          json['codigoQualificacaoRepresentanteLegal'] as int?,
    );

Map<String, dynamic> _$QsaToJson(Qsa instance) => <String, dynamic>{
      'identificadorDeSocio': instance.identificadorDeSocio,
      'nomeSocio': instance.nomeSocio,
      'cnpjCpfDoSocio': instance.cnpjCpfDoSocio,
      'codigoQualificacaoSocio': instance.codigoQualificacaoSocio,
      'percentualCapitalSocial': instance.percentualCapitalSocial,
      'dataEntradaSociedade': instance.dataEntradaSociedade,
      'cpfRepresentanteLegal': instance.cpfRepresentanteLegal,
      'nomeRepresentanteLegal': instance.nomeRepresentanteLegal,
      'codigoQualificacaoRepresentanteLegal':
          instance.codigoQualificacaoRepresentanteLegal,
    };

CNPJBrasilAPI _$CNPJBrasilAPIFromJson(Map<String, dynamic> json) =>
    CNPJBrasilAPI(
      cnpj: json['cnpj'] as String? ?? "",
      identificadorMatrizFilial: json['identificadorMatrizFilial'] as int?,
      descricaoMatrizFilial: json['descricaoMatrizFilial'] as String? ?? "",
      razaoSocial: json['razaoSocial'] as String? ?? "",
      nomeFantasia: json['nomeFantasia'] as String? ?? "",
      situacaoCadastral: json['situacaoCadastral'] as int?,
      descricaoSituacaoCadastral:
          json['descricaoSituacaoCadastral'] as String? ?? "",
      dataSituacaoCadastral: json['dataSituacaoCadastral'] as String? ?? "",
      motivoSituacaoCadastral: json['motivoSituacaoCadastral'] as int?,
      descricaoMotivoSituacaoCadastral:
          json['descricaoMotivoSituacaoCadastral'] as String? ?? "",
      nomeCidadeExterior: json['nomeCidadeExterior'] as String? ?? "",
      codigoNaturezaJuridica: json['codigoNaturezaJuridica'] as int?,
      dataInicioAtividade: json['dataInicioAtividade'] as String? ?? "",
      cnaeFiscal: json['cnaeFiscal'] as int?,
      cnaeFiscalDescricao: json['cnaeFiscalDescricao'] as String? ?? "",
      descricaoTipoLogradouro: json['descricaoTipoLogradouro'] as String? ?? "",
      logradouro: json['logradouro'] as String? ?? "",
      numero: json['numero'] as String? ?? "",
      complemento: json['complemento'] as String? ?? "",
      bairro: json['bairro'] as String? ?? "",
      cep: json['cep'] as String? ?? "",
      uf: json['uf'] as String? ?? "",
      codigoMunicipio: json['codigoMunicipio'] as int?,
      municipio: json['municipio'] as String? ?? "",
      dddTelefone1: json['dddTelefone1'] as String? ?? "",
      dddTelefone2: json['dddTelefone2'] as String? ?? "",
      dddFax: json['dddFax'] as String? ?? "",
      qualificacaoDoResponsavel: json['qualificacaoDoResponsavel'] as int?,
      capitalSocial: json['capitalSocial'] as int?,
      porte: json['porte'] as String? ?? "",
      descricaoPorte: json['descricaoPorte'] as String? ?? "",
      opcaoPeloSimples: json['opcaoPeloSimples'] as bool?,
      dataOpcaoPeloSimples: json['dataOpcaoPeloSimples'] == null
          ? null
          : DateTime.parse(json['dataOpcaoPeloSimples'] as String),
      dataExclusaoDoSimples: json['dataExclusaoDoSimples'] == null
          ? null
          : DateTime.parse(json['dataExclusaoDoSimples'] as String),
      opcaoPeloMei: json['opcaoPeloMei'] as bool?,
      situacaoEspecial: json['situacaoEspecial'] as String? ?? "",
      dataSituacaoEspecial: json['dataSituacaoEspecial'] == null
          ? null
          : DateTime.parse(json['dataSituacaoEspecial'] as String),
      cnaesSecundarios: (json['cnaesSecundarios'] as List<dynamic>?)
          ?.map((e) => CnaesSecundarios.fromJson(e as Map<String, dynamic>))
          .toList(),
      qsa: (json['qsa'] as List<dynamic>?)
          ?.map((e) => Qsa.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CNPJBrasilAPIToJson(CNPJBrasilAPI instance) =>
    <String, dynamic>{
      'cnpj': instance.cnpj,
      'identificadorMatrizFilial': instance.identificadorMatrizFilial,
      'descricaoMatrizFilial': instance.descricaoMatrizFilial,
      'razaoSocial': instance.razaoSocial,
      'nomeFantasia': instance.nomeFantasia,
      'situacaoCadastral': instance.situacaoCadastral,
      'descricaoSituacaoCadastral': instance.descricaoSituacaoCadastral,
      'dataSituacaoCadastral': instance.dataSituacaoCadastral,
      'motivoSituacaoCadastral': instance.motivoSituacaoCadastral,
      'descricaoMotivoSituacaoCadastral':
          instance.descricaoMotivoSituacaoCadastral,
      'nomeCidadeExterior': instance.nomeCidadeExterior,
      'codigoNaturezaJuridica': instance.codigoNaturezaJuridica,
      'dataInicioAtividade': instance.dataInicioAtividade,
      'cnaeFiscal': instance.cnaeFiscal,
      'cnaeFiscalDescricao': instance.cnaeFiscalDescricao,
      'descricaoTipoLogradouro': instance.descricaoTipoLogradouro,
      'logradouro': instance.logradouro,
      'numero': instance.numero,
      'complemento': instance.complemento,
      'bairro': instance.bairro,
      'cep': instance.cep,
      'uf': instance.uf,
      'codigoMunicipio': instance.codigoMunicipio,
      'municipio': instance.municipio,
      'dddTelefone1': instance.dddTelefone1,
      'dddTelefone2': instance.dddTelefone2,
      'dddFax': instance.dddFax,
      'qualificacaoDoResponsavel': instance.qualificacaoDoResponsavel,
      'capitalSocial': instance.capitalSocial,
      'porte': instance.porte,
      'descricaoPorte': instance.descricaoPorte,
      'opcaoPeloSimples': instance.opcaoPeloSimples,
      'dataOpcaoPeloSimples': instance.dataOpcaoPeloSimples?.toIso8601String(),
      'dataExclusaoDoSimples':
          instance.dataExclusaoDoSimples?.toIso8601String(),
      'opcaoPeloMei': instance.opcaoPeloMei,
      'situacaoEspecial': instance.situacaoEspecial,
      'dataSituacaoEspecial': instance.dataSituacaoEspecial?.toIso8601String(),
      'cnaesSecundarios':
          instance.cnaesSecundarios?.map((e) => e.toJson()).toList(),
      'qsa': instance.qsa?.map((e) => e.toJson()).toList(),
    };
