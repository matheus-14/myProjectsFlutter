// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MCnpjBrasilAPI.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CNPJBrasilAPI _$CNPJBrasilAPIFromJson(Map<String, dynamic> json) =>
    CNPJBrasilAPI(
      cnpj: json['cnpj'] as String? ?? "",
      identificador_matriz_filial: json['identificador_matriz_filial'] as int?,
      descricao_identificador_matriz_filial:
          json['descricao_identificador_matriz_filial'] as String? ?? "",
      razao_social: json['razao_social'] as String? ?? "",
      nome_fantasia: json['nome_fantasia'] as String? ?? "",
      situacao_cadastral: json['situacao_cadastral'] as int?,
      descricao_situacao_cadastral:
          json['descricao_situacao_cadastral'] as String? ?? "",
      data_situacao_cadastral: json['data_situacao_cadastral'] == null
          ? null
          : DateTime.parse(json['data_situacao_cadastral'] as String),
      motivo_situacao_cadastral: json['motivo_situacao_cadastral'] as int?,
      descricao_motivo_situacao_cadastral:
          json['descricao_motivo_situacao_cadastral'] as String? ?? "",
      ente_federativo_responsavel:
          json['ente_federativo_responsavel'] as String? ?? "",
      nome_cidade_exterior: json['nome_cidade_exterior'] as String? ?? "",
      natureza_juridica: json['natureza_juridica'] as String?,
      codigo_natureza_juridica: json['codigo_natureza_juridica'] as int?,
      codigo_porte: json['codigo_porte'] as int?,
      data_inicio_atividade: json['data_inicio_atividade'] == null
          ? null
          : DateTime.parse(json['data_inicio_atividade'] as String),
      cnae_fiscal: json['cnae_fiscal'] as int?,
      cnae_fiscal_descricao: json['cnae_fiscal_descricao'] as String? ?? "",
      descricao_tipo_de_logradouro:
          json['descricao_tipo_de_logradouro'] as String? ?? "",
      logradouro: json['logradouro'] as String? ?? "",
      numero: json['numero'] as String? ?? "",
      complemento: json['complemento'] as String? ?? "",
      bairro: json['bairro'] as String? ?? "",
      cep: json['cep'] as String? ?? "",
      uf: json['uf'] as String? ?? "",
      codigo_municipio: json['codigo_municipio'] as int?,
      municipio: json['municipio'] as String? ?? "",
      codigo_municipio_ibge: json['codigo_municipio_ibge'] as int?,
      ddd_telefone_1: json['ddd_telefone_1'] as String? ?? "",
      ddd_telefone_2: json['ddd_telefone_2'] as String? ?? "",
      ddd_fax: json['ddd_fax'] as String? ?? "",
      qualificacao_do_responsavel: json['qualificacao_do_responsavel'] as int?,
      capital_social: json['capital_social'] as String? ?? "",
      porte: json['porte'] as String? ?? "",
      descricao_porte: json['descricao_porte'] as String? ?? "",
      opcao_pelo_simples: json['opcao_pelo_simples'] as bool?,
      data_opcao_pelo_simples: json['data_opcao_pelo_simples'] as String? ?? "",
      data_exclusao_do_simples:
          json['data_exclusao_do_simples'] as String? ?? "",
      data_exclusao_do_mei: json['data_exclusao_do_mei'] as String?,
      data_opcao_pelo_mei: json['data_opcao_pelo_mei'] as String?,
      opcao_pelo_mei: json['opcao_pelo_mei'] as bool?,
      situacao_especial: json['situacao_especial'] as String? ?? "",
      data_situacao_especial: json['data_situacao_especial'] as String? ?? "",
      cnaes_secundarios: (json['cnaes_secundarios'] as List<dynamic>?)
          ?.map((e) => CnaesSecundarios.fromJson(e as Map<String, dynamic>))
          .toList(),
      qsa: (json['qsa'] as List<dynamic>?)
          ?.map((e) => Qsa.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CNPJBrasilAPIToJson(CNPJBrasilAPI instance) =>
    <String, dynamic>{
      'cnpj': instance.cnpj,
      'identificador_matriz_filial': instance.identificador_matriz_filial,
      'descricao_identificador_matriz_filial':
          instance.descricao_identificador_matriz_filial,
      'razao_social': instance.razao_social,
      'nome_fantasia': instance.nome_fantasia,
      'situacao_cadastral': instance.situacao_cadastral,
      'descricao_situacao_cadastral': instance.descricao_situacao_cadastral,
      'data_situacao_cadastral':
          instance.data_situacao_cadastral?.toIso8601String(),
      'motivo_situacao_cadastral': instance.motivo_situacao_cadastral,
      'descricao_motivo_situacao_cadastral':
          instance.descricao_motivo_situacao_cadastral,
      'ente_federativo_responsavel': instance.ente_federativo_responsavel,
      'nome_cidade_exterior': instance.nome_cidade_exterior,
      'natureza_juridica': instance.natureza_juridica,
      'codigo_natureza_juridica': instance.codigo_natureza_juridica,
      'codigo_porte': instance.codigo_porte,
      'data_inicio_atividade':
          instance.data_inicio_atividade?.toIso8601String(),
      'cnae_fiscal': instance.cnae_fiscal,
      'cnae_fiscal_descricao': instance.cnae_fiscal_descricao,
      'descricao_tipo_de_logradouro': instance.descricao_tipo_de_logradouro,
      'logradouro': instance.logradouro,
      'numero': instance.numero,
      'complemento': instance.complemento,
      'bairro': instance.bairro,
      'cep': instance.cep,
      'uf': instance.uf,
      'codigo_municipio': instance.codigo_municipio,
      'municipio': instance.municipio,
      'codigo_municipio_ibge': instance.codigo_municipio_ibge,
      'ddd_telefone_1': instance.ddd_telefone_1,
      'ddd_telefone_2': instance.ddd_telefone_2,
      'ddd_fax': instance.ddd_fax,
      'qualificacao_do_responsavel': instance.qualificacao_do_responsavel,
      'capital_social': instance.capital_social,
      'porte': instance.porte,
      'descricao_porte': instance.descricao_porte,
      'opcao_pelo_simples': instance.opcao_pelo_simples,
      'data_opcao_pelo_simples': instance.data_opcao_pelo_simples,
      'data_exclusao_do_simples': instance.data_exclusao_do_simples,
      'data_exclusao_do_mei': instance.data_exclusao_do_mei,
      'data_opcao_pelo_mei': instance.data_opcao_pelo_mei,
      'opcao_pelo_mei': instance.opcao_pelo_mei,
      'situacao_especial': instance.situacao_especial,
      'data_situacao_especial': instance.data_situacao_especial,
      'cnaes_secundarios':
          instance.cnaes_secundarios?.map((e) => e.toJson()).toList(),
      'qsa': instance.qsa?.map((e) => e.toJson()).toList(),
    };
