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
      pais: json['pais'] as String? ?? "",
      nome_socio: json['nome_socio'] as String? ?? "",
      codigo_pais: json['codigo_pais'] as int?,
      faixa_etaria: json['faixa_etaria'] as String? ?? "",
      cnpj_cpf_do_socio: json['cnpj_cpf_do_socio'] as String? ?? "",
      qualificacao_socio: json['qualificacao_socio'] as String? ?? "",
      codigo_faixa_etaria: json['codigo_faixa_etaria'] as int?,
      data_entrada_sociedade: json['data_entrada_sociedade'] as String? ?? "",
      identificador_de_socio: json['identificador_de_socio'] as int?,
      cpf_representante_legal: json['cpf_representante_legal'] as String? ?? "",
      nome_representante_legal:
          json['nome_representante_legal'] as String? ?? "",
      codigo_qualificacao_socio: json['codigo_qualificacao_socio'] as int?,
      qualificacao_representante_legal:
          json['qualificacao_representante_legal'] as String? ?? "",
      codigo_qualificacao_representante_legal:
          json['codigo_qualificacao_representante_legal'] as int?,
    );

Map<String, dynamic> _$QsaToJson(Qsa instance) => <String, dynamic>{
      'pais': instance.pais,
      'nome_socio': instance.nome_socio,
      'codigo_pais': instance.codigo_pais,
      'faixa_etaria': instance.faixa_etaria,
      'cnpj_cpf_do_socio': instance.cnpj_cpf_do_socio,
      'qualificacao_socio': instance.qualificacao_socio,
      'codigo_faixa_etaria': instance.codigo_faixa_etaria,
      'data_entrada_sociedade': instance.data_entrada_sociedade,
      'identificador_de_socio': instance.identificador_de_socio,
      'cpf_representante_legal': instance.cpf_representante_legal,
      'nome_representante_legal': instance.nome_representante_legal,
      'codigo_qualificacao_socio': instance.codigo_qualificacao_socio,
      'qualificacao_representante_legal':
          instance.qualificacao_representante_legal,
      'codigo_qualificacao_representante_legal':
          instance.codigo_qualificacao_representante_legal,
    };

CNPJBrasilAPI _$CNPJBrasilAPIFromJson(Map<String, dynamic> json) =>
    CNPJBrasilAPI(
      cnpj: json['cnpj'] as String? ?? "",
      identificador_matriz_filial: json['identificador_matriz_filial'] as int?,
      descricao_matriz_filial: json['descricao_matriz_filial'] as String? ?? "",
      razao_social: json['razao_social'] as String? ?? "",
      nome_fantasia: json['nome_fantasia'] as String? ?? "",
      situacao_cadastral: json['situacao_cadastral'] as int?,
      descricao_situacao_cadastral:
          json['descricao_situacao_cadastral'] as String? ?? "",
      data_situacao_cadastral: json['data_situacao_cadastral'] as String? ?? "",
      motivo_situacao_cadastral: json['motivo_situacao_cadastral'] as int?,
      descricao_motivo_situacao_cadastral:
          json['descricao_motivo_situacao_cadastral'] as String? ?? "",
      nome_cidade_exterior: json['nome_cidade_exterior'] as String? ?? "",
      natureza_juridica: json['natureza_juridica'] as String?,
      codigo_natureza_juridica: json['codigo_natureza_juridica'] as int?,
      data_inicio_atividade: json['data_inicio_atividade'] as String? ?? "",
      cnae_fiscal: json['cnae_fiscal'] as int?,
      cnae_fiscal_descricao: json['cnae_fiscal_descricao'] as String? ?? "",
      descricao_tipo_logradouro:
          json['descricao_tipo_logradouro'] as String? ?? "",
      logradouro: json['logradouro'] as String? ?? "",
      numero: json['numero'] as String? ?? "",
      complemento: json['complemento'] as String? ?? "",
      bairro: json['bairro'] as String? ?? "",
      cep: json['cep'] as String? ?? "",
      uf: json['uf'] as String? ?? "",
      codigo_municipio: json['codigo_municipio'] as int?,
      municipio: json['municipio'] as String? ?? "",
      ddd_telefone1: json['ddd_telefone1'] as String? ?? "",
      ddd_telefone2: json['ddd_telefone2'] as String? ?? "",
      ddd_fax: json['ddd_fax'] as String? ?? "",
      qualificacao_do_responsavel: json['qualificacao_do_responsavel'] as int?,
      capital_social: json['capital_social'] as int?,
      porte: json['porte'] as String? ?? "",
      descricao_porte: json['descricao_porte'] as String? ?? "",
      opcao_pelo_simples: json['opcao_pelo_simples'] as bool?,
      data_opcao_pelo_simples: json['data_opcao_pelo_simples'] == null
          ? null
          : DateTime.parse(json['data_opcao_pelo_simples'] as String),
      data_exclusao_do_simples: json['data_exclusao_do_simples'] == null
          ? null
          : DateTime.parse(json['data_exclusao_do_simples'] as String),
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
      'descricao_matriz_filial': instance.descricao_matriz_filial,
      'razao_social': instance.razao_social,
      'nome_fantasia': instance.nome_fantasia,
      'situacao_cadastral': instance.situacao_cadastral,
      'descricao_situacao_cadastral': instance.descricao_situacao_cadastral,
      'data_situacao_cadastral': instance.data_situacao_cadastral,
      'motivo_situacao_cadastral': instance.motivo_situacao_cadastral,
      'descricao_motivo_situacao_cadastral':
          instance.descricao_motivo_situacao_cadastral,
      'nome_cidade_exterior': instance.nome_cidade_exterior,
      'natureza_juridica': instance.natureza_juridica,
      'codigo_natureza_juridica': instance.codigo_natureza_juridica,
      'data_inicio_atividade': instance.data_inicio_atividade,
      'cnae_fiscal': instance.cnae_fiscal,
      'cnae_fiscal_descricao': instance.cnae_fiscal_descricao,
      'descricao_tipo_logradouro': instance.descricao_tipo_logradouro,
      'logradouro': instance.logradouro,
      'numero': instance.numero,
      'complemento': instance.complemento,
      'bairro': instance.bairro,
      'cep': instance.cep,
      'uf': instance.uf,
      'codigo_municipio': instance.codigo_municipio,
      'municipio': instance.municipio,
      'ddd_telefone1': instance.ddd_telefone1,
      'ddd_telefone2': instance.ddd_telefone2,
      'ddd_fax': instance.ddd_fax,
      'qualificacao_do_responsavel': instance.qualificacao_do_responsavel,
      'capital_social': instance.capital_social,
      'porte': instance.porte,
      'descricao_porte': instance.descricao_porte,
      'opcao_pelo_simples': instance.opcao_pelo_simples,
      'data_opcao_pelo_simples':
          instance.data_opcao_pelo_simples?.toIso8601String(),
      'data_exclusao_do_simples':
          instance.data_exclusao_do_simples?.toIso8601String(),
      'opcao_pelo_mei': instance.opcao_pelo_mei,
      'situacao_especial': instance.situacao_especial,
      'data_situacao_especial': instance.data_situacao_especial,
      'cnaes_secundarios':
          instance.cnaes_secundarios?.map((e) => e.toJson()).toList(),
      'qsa': instance.qsa?.map((e) => e.toJson()).toList(),
    };
