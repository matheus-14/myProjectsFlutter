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
      capitalSocial: json['capitalSocial'] as int?,
      qsa: json['qsa'] as String? ?? "",
      situacaoEspecial: json['situacaoEspecial'] as String? ?? "",
      dataSituacaoEspecial: json['dataSituacaoEspecial'] == null
          ? null
          : DateTime.parse(json['dataSituacaoEspecial'] as String),
      tipoMatrizFilial: json['tipoMatrizFilial'] as String? ?? "",
      codigoNaturezaJuridica: json['codigoNaturezaJuridica'] as int?,
      naturezaJuridica: json['naturezaJuridica'] as String? ?? "",
      abertura: json['abertura'] == null
          ? null
          : DateTime.parse(json['abertura'] as String),
      telefone: json['telefone'] as String? ?? "",
      situacaoCadastral: json['situacaoCadastral'] as String? ?? "",
      dataSituacaoCadastral: json['dataSituacaoCadastral'] == null
          ? null
          : DateTime.parse(json['dataSituacaoCadastral'] as String),
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
      codigoQualificacaoDoResponsavel:
          json['codigoQualificacaoDoResponsavel'] as int?,
      descricaoPorte: json['descricaoPorte'] as String? ?? "",
      opcaoPeloSimples: json['opcaoPeloSimples'] as bool?,
      dataOpcaoPeloSimples: json['dataOpcaoPeloSimples'] == null
          ? null
          : DateTime.parse(json['dataOpcaoPeloSimples'] as String),
      dataExclusaoDoSimples: json['dataExclusaoDoSimples'] == null
          ? null
          : DateTime.parse(json['dataExclusaoDoSimples'] as String),
      opcaoPeloMei: json['opcaoPeloMei'] as bool?,
      cnaesSecundarios: json['cnaesSecundarios'] as String? ?? "",
      cnaeFiscal: json['cnaeFiscal'] as int?,
      cnaeFiscalDescricao: json['cnaeFiscalDescricao'] as String? ?? "",
      status: json['status'] as String? ?? "",
      efr: json['efr'] as String? ?? "",
      email: json['email'] as String? ?? "",
      ultimaAtualizacao: json['ultimaAtualizacao'] == null
          ? null
          : DateTime.parse(json['ultimaAtualizacao'] as String),
      cnaeAtvSecundaria: json['cnaeAtvSecundaria'] as int?,
      cnaeAtvSecundariaDescricao: json['cnaeAtvSecundariaDescricao'] as String?,
      billingFree: json['billingFree'] as bool?,
      billingDatabase: json['billingDatabase'] as bool?,
      pais: json['pais'] as String? ?? "",
      nomeSocio: json['nomeSocio'] as String? ?? "",
      codigoPais: json['codigoPais'] as int?,
      faixaEtaria: json['faixaEtaria'] as String? ?? "",
      cnpjCpfDoSocio: json['cnpjCpfDoSocio'] as String? ?? "",
      qualificacaoSocio: json['qualificacaoSocio'] as String? ?? "",
      codigoFaixaEtaria: json['codigoFaixaEtaria'] as int?,
      dataEntradaSociedade: json['dataEntradaSociedade'] == null
          ? null
          : DateTime.parse(json['dataEntradaSociedade'] as String),
      identificadorDeSocio: json['identificadorDeSocio'] as int?,
      cpfRepresentanteLegal: json['cpfRepresentanteLegal'] as String? ?? "",
      nomeRepresentanteLegal: json['nomeRepresentanteLegal'] as String? ?? "",
      codigoQualificacaoSocio: json['codigoQualificacaoSocio'] as int?,
      qualificacaoRepresentanteLegal:
          json['qualificacaoRepresentanteLegal'] as String? ?? "",
      codigoQualificacaoRepresentanteLegal:
          json['codigoQualificacaoRepresentanteLegal'] as int?,
    )..pcaoPeloSimples = json['pcaoPeloSimples'] as bool?;

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
      'dataSituacaoEspecial': instance.dataSituacaoEspecial?.toIso8601String(),
      'tipoMatrizFilial': instance.tipoMatrizFilial,
      'codigoNaturezaJuridica': instance.codigoNaturezaJuridica,
      'naturezaJuridica': instance.naturezaJuridica,
      'abertura': instance.abertura?.toIso8601String(),
      'telefone': instance.telefone,
      'situacaoCadastral': instance.situacaoCadastral,
      'dataSituacaoCadastral':
          instance.dataSituacaoCadastral?.toIso8601String(),
      'descricaoMotivoSituacaoCadastral':
          instance.descricaoMotivoSituacaoCadastral,
      'qualificacaoDoResponsavel': instance.qualificacaoDoResponsavel,
      'codigoQualificacaoDoResponsavel':
          instance.codigoQualificacaoDoResponsavel,
      'opcaoPeloSimples': instance.opcaoPeloSimples,
      'cnaesSecundarios': instance.cnaesSecundarios,
      'cnaeFiscal': instance.cnaeFiscal,
      'cnaeFiscalDescricao': instance.cnaeFiscalDescricao,
      'cnaeAtvSecundaria': instance.cnaeAtvSecundaria,
      'cnaeAtvSecundariaDescricao': instance.cnaeAtvSecundariaDescricao,
      'status': instance.status,
      'efr': instance.efr,
      'email': instance.email,
      'ultimaAtualizacao': instance.ultimaAtualizacao?.toIso8601String(),
      'billingFree': instance.billingFree,
      'billingDatabase': instance.billingDatabase,
      'identificadorMatrizFilial': instance.identificadorMatrizFilial,
      'codigoMunicipio': instance.codigoMunicipio,
      'motivoSituacaoCadastral': instance.motivoSituacaoCadastral,
      'nomeCidadeExterior': instance.nomeCidadeExterior,
      'descricaoTipoLogradouro': instance.descricaoTipoLogradouro,
      'dddTelefone2': instance.dddTelefone2,
      'dddFax': instance.dddFax,
      'descricaoPorte': instance.descricaoPorte,
      'pcaoPeloSimples': instance.pcaoPeloSimples,
      'dataOpcaoPeloSimples': instance.dataOpcaoPeloSimples?.toIso8601String(),
      'dataExclusaoDoSimples':
          instance.dataExclusaoDoSimples?.toIso8601String(),
      'opcaoPeloMei': instance.opcaoPeloMei,
      'pais': instance.pais,
      'nomeSocio': instance.nomeSocio,
      'codigoPais': instance.codigoPais,
      'faixaEtaria': instance.faixaEtaria,
      'cnpjCpfDoSocio': instance.cnpjCpfDoSocio,
      'qualificacaoSocio': instance.qualificacaoSocio,
      'codigoFaixaEtaria': instance.codigoFaixaEtaria,
      'dataEntradaSociedade': instance.dataEntradaSociedade?.toIso8601String(),
      'identificadorDeSocio': instance.identificadorDeSocio,
      'cpfRepresentanteLegal': instance.cpfRepresentanteLegal,
      'nomeRepresentanteLegal': instance.nomeRepresentanteLegal,
      'codigoQualificacaoSocio': instance.codigoQualificacaoSocio,
      'qualificacaoRepresentanteLegal': instance.qualificacaoRepresentanteLegal,
      'codigoQualificacaoRepresentanteLegal':
          instance.codigoQualificacaoRepresentanteLegal,
    };
