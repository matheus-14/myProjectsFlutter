// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cnpj_receitaws.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AtividadePrincipal _$AtividadePrincipalFromJson(Map<String, dynamic> json) =>
    AtividadePrincipal(
      code: json['code'] as String? ?? "",
      text: json['text'] as String? ?? "",
    );

Map<String, dynamic> _$AtividadePrincipalToJson(AtividadePrincipal instance) =>
    <String, dynamic>{
      'code': instance.code,
      'text': instance.text,
    };

AtividadesSecundarias _$AtividadesSecundariasFromJson(
        Map<String, dynamic> json) =>
    AtividadesSecundarias(
      code: json['code'] as String? ?? "",
      text: json['text'] as String? ?? "",
    );

Map<String, dynamic> _$AtividadesSecundariasToJson(
        AtividadesSecundarias instance) =>
    <String, dynamic>{
      'code': instance.code,
      'text': instance.text,
    };

Billing _$BillingFromJson(Map<String, dynamic> json) => Billing(
      free: json['free'] as bool? ?? true,
      database: json['database'] as bool? ?? true,
    );

Map<String, dynamic> _$BillingToJson(Billing instance) => <String, dynamic>{
      'free': instance.free,
      'database': instance.database,
    };

CNPJReceitaWS _$CNPJReceitaWSFromJson(Map<String, dynamic> json) =>
    CNPJReceitaWS(
      status: json['status'] as String? ?? "",
      ultima_atualizacao: json['ultima_atualizacao'] == null
          ? null
          : DateTime.parse(json['ultima_atualizacao'] as String),
      cnpj: json['cnpj'] as String? ?? "",
      tipo: json['tipo'] as String? ?? "",
      porte: json['porte'] as String? ?? "",
      nome: json['nome'] as String? ?? "",
      fantasia: json['fantasia'] as String? ?? "",
      abertura: json['abertura'] as String? ?? "",
      atividade_principal: (json['atividade_principal'] as List<dynamic>?)
          ?.map((e) => AtividadePrincipal.fromJson(e as Map<String, dynamic>))
          .toList(),
      atividades_secundarias: (json['atividades_secundarias'] as List<dynamic>?)
          ?.map(
              (e) => AtividadesSecundarias.fromJson(e as Map<String, dynamic>))
          .toList(),
      natureza_juridica: json['natureza_juridica'] as String? ?? "",
      logradouro: json['logradouro'] as String? ?? "",
      numero: json['numero'] as String? ?? "",
      complemento: json['complemento'] as String? ?? "",
      cep: json['cep'] as String? ?? "",
      bairro: json['bairro'] as String? ?? "",
      municipio: json['municipio'] as String? ?? "",
      uf: json['uf'] as String? ?? "",
      email: json['email'] as String? ?? "",
      telefone: json['telefone'] as String? ?? "",
      efr: json['efr'] as String? ?? "",
      situacao: json['situacao'] as String? ?? "",
      data_situacao: json['data_situacao'] as String? ?? "",
      motivo_situacao: json['motivo_situacao'] as String? ?? "",
      situacao_especial: json['situacao_especial'] as String? ?? "",
      data_situacao_especial: json['data_situacao_especial'] as String? ?? "",
      capital_social: json['capital_social'] as String? ?? "",
      qsa: (json['qsa'] as List<dynamic>?)
          ?.map((e) => Qsa.fromJson(e as Map<String, dynamic>))
          .toList(),
      billing: json['billing'] == null
          ? null
          : Billing.fromJson(json['billing'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CNPJReceitaWSToJson(CNPJReceitaWS instance) =>
    <String, dynamic>{
      'status': instance.status,
      'ultima_atualizacao': instance.ultima_atualizacao?.toIso8601String(),
      'cnpj': instance.cnpj,
      'tipo': instance.tipo,
      'porte': instance.porte,
      'nome': instance.nome,
      'fantasia': instance.fantasia,
      'abertura': instance.abertura,
      'atividade_principal':
          instance.atividade_principal?.map((e) => e.toJson()).toList(),
      'atividades_secundarias':
          instance.atividades_secundarias?.map((e) => e.toJson()).toList(),
      'natureza_juridica': instance.natureza_juridica,
      'logradouro': instance.logradouro,
      'numero': instance.numero,
      'complemento': instance.complemento,
      'cep': instance.cep,
      'bairro': instance.bairro,
      'municipio': instance.municipio,
      'uf': instance.uf,
      'email': instance.email,
      'telefone': instance.telefone,
      'efr': instance.efr,
      'situacao': instance.situacao,
      'data_situacao': instance.data_situacao,
      'motivo_situacao': instance.motivo_situacao,
      'situacao_especial': instance.situacao_especial,
      'data_situacao_especial': instance.data_situacao_especial,
      'capital_social': instance.capital_social,
      'qsa': instance.qsa?.map((e) => e.toJson()).toList(),
      'billing': instance.billing?.toJson(),
    };
