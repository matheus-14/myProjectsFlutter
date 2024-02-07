// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cnpj_normal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CNPJNormal _$CNPJNormalFromJson(Map<String, dynamic> json) => CNPJNormal(
      cnpj: json['cnpj'] as String? ?? "",
      porte: json['porte'] as String? ?? "",
      razao: json['razao'] as String? ?? "",
      nome: json['nome'] as String? ?? "",
      logradouro: json['logradouro'] as String? ?? "",
      numero: json['numero'] as String? ?? "",
      complemento: json['complemento'] as String? ?? "",
      bairro: json['bairro'] as String? ?? "",
      cep: json['cep'] as String? ?? "",
      uf: json['uf'] as String? ?? "",
      municipio: json['municipio'] as String? ?? "",
      capitalSocial: json['capitalSocial'] as String? ?? "",
      qsa: json['qsa'] as String? ?? "",
      situacaoEspecial: json['situacaoEspecial'] as String? ?? "",
      dataSituacaoEspecial: json['dataSituacaoEspecial'] as String? ?? "",
      tipoMatrizFilial: json['tipoMatrizFilial'] as String? ?? "",
      naturezaJuridica: json['naturezaJuridica'] as String? ?? "",
      abertura: json['abertura'] as String? ?? "",
      telefone: json['telefone'] as String? ?? "",
      situacaoCadastral: json['situacaoCadastral'] as String? ?? "",
      dataSituacaoCadastral: json['dataSituacaoCadastral'] as String? ?? "",
      descricaoMotivoSituacaoCadastral:
          json['descricaoMotivoSituacaoCadastral'] as String? ?? "",
      identificadorMatrizFilial: json['identificadorMatrizFilial'] as int?,
      codigoMunicipio: json['codigoMunicipio'] as int?,
      motivoSituacaoCadastral: json['motivoSituacaoCadastral'] as int?,
      nomeCidadeExterior: json['nomeCidadeExterior'] as String? ?? "",
      descricaoTipoLogradouro: json['descricaoTipoLogradouro'] as String? ?? "",
      dddTelefone2: json['dddTelefone2'] as String? ?? "",
      dddFax: json['dddFax'] as String? ?? "",
      qualificacaoDoResponsavel:
          json['qualificacaoDoResponsavel'] as String? ?? "",
      descricaoPorte: json['descricaoPorte'] as String? ?? "",
      opcaoPeloSimples: json['opcaoPeloSimples'] as bool?,
      dataOpcaoPeloSimples: json['dataOpcaoPeloSimples'] == null
          ? null
          : DateTime.parse(json['dataOpcaoPeloSimples'] as String),
      dataExclusaoDoSimples: json['dataExclusaoDoSimples'] == null
          ? null
          : DateTime.parse(json['dataExclusaoDoSimples'] as String),
      opcaoPeloMei: json['opcaoPeloMei'] as String? ?? "",
      cnaesSecundarios: json['cnaesSecundarios'] as String? ?? "",
      cnaeFiscal: json['cnaeFiscal'] as String? ?? "",
      cnaeFiscalDescricao: json['cnaeFiscalDescricao'] as String? ?? "",
    );

Map<String, dynamic> _$CNPJNormalToJson(CNPJNormal instance) =>
    <String, dynamic>{
      'cnpj': instance.cnpj,
      'porte': instance.porte,
      'razao': instance.razao,
      'nome': instance.nome,
      'logradouro': instance.logradouro,
      'numero': instance.numero,
      'complemento': instance.complemento,
      'bairro': instance.bairro,
      'cep': instance.cep,
      'uf': instance.uf,
      'municipio': instance.municipio,
      'capitalSocial': instance.capitalSocial,
      'qsa': instance.qsa,
      'situacaoEspecial': instance.situacaoEspecial,
      'dataSituacaoEspecial': instance.dataSituacaoEspecial,
      'tipoMatrizFilial': instance.tipoMatrizFilial,
      'naturezaJuridica': instance.naturezaJuridica,
      'abertura': instance.abertura,
      'telefone': instance.telefone,
      'situacaoCadastral': instance.situacaoCadastral,
      'dataSituacaoCadastral': instance.dataSituacaoCadastral,
      'descricaoMotivoSituacaoCadastral':
          instance.descricaoMotivoSituacaoCadastral,
      'identificadorMatrizFilial': instance.identificadorMatrizFilial,
      'codigoMunicipio': instance.codigoMunicipio,
      'motivoSituacaoCadastral': instance.motivoSituacaoCadastral,
      'nomeCidadeExterior': instance.nomeCidadeExterior,
      'descricaoTipoLogradouro': instance.descricaoTipoLogradouro,
      'dddTelefone2': instance.dddTelefone2,
      'dddFax': instance.dddFax,
      'qualificacaoDoResponsavel': instance.qualificacaoDoResponsavel,
      'descricaoPorte': instance.descricaoPorte,
      'opcaoPeloSimples': instance.opcaoPeloSimples,
      'dataOpcaoPeloSimples': instance.dataOpcaoPeloSimples?.toIso8601String(),
      'dataExclusaoDoSimples':
          instance.dataExclusaoDoSimples?.toIso8601String(),
      'opcaoPeloMei': instance.opcaoPeloMei,
      'cnaesSecundarios': instance.cnaesSecundarios,
      'cnaeFiscal': instance.cnaeFiscal,
      'cnaeFiscalDescricao': instance.cnaeFiscalDescricao,
    };
