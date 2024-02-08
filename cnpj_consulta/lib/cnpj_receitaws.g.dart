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

Qsa _$QsaFromJson(Map<String, dynamic> json) => Qsa(
      nome: json['nome'] as String? ?? "",
      qual: json['qual'] as String? ?? "",
      paisOrigem: json['paisOrigem'] as String? ?? "",
      nomeRepLegal: json['nomeRepLegal'] as String? ?? "",
      qualRepLegal: json['qualRepLegal'] as String? ?? "",
    );

Map<String, dynamic> _$QsaToJson(Qsa instance) => <String, dynamic>{
      'nome': instance.nome,
      'qual': instance.qual,
      'paisOrigem': instance.paisOrigem,
      'nomeRepLegal': instance.nomeRepLegal,
      'qualRepLegal': instance.qualRepLegal,
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
      ultimaAtualizacao: json['ultimaAtualizacao'] as String? ?? "",
      cnpj: json['cnpj'] as String? ?? "",
      tipo: json['tipo'] as String? ?? "",
      porte: json['porte'] as String? ?? "",
      nome: json['nome'] as String? ?? "",
      fantasia: json['fantasia'] as String? ?? "",
      abertura: json['abertura'] as String? ?? "",
      atividadePrincipal: (json['atividadePrincipal'] as List<dynamic>?)
          ?.map((e) => AtividadePrincipal.fromJson(e as Map<String, dynamic>))
          .toList(),
      atividadesSecundarias: (json['atividadesSecundarias'] as List<dynamic>?)
          ?.map(
              (e) => AtividadesSecundarias.fromJson(e as Map<String, dynamic>))
          .toList(),
      naturezaJuridica: json['naturezaJuridica'] as String? ?? "",
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
      dataSituacao: json['dataSituacao'] as String? ?? "",
      motivoSituacao: json['motivoSituacao'] as String? ?? "",
      situacaoEspecial: json['situacaoEspecial'] as String? ?? "",
      dataSituacaoEspecial: json['dataSituacaoEspecial'] as String? ?? "",
      capitalSocial: json['capitalSocial'] as String? ?? "",
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
      'ultimaAtualizacao': instance.ultimaAtualizacao,
      'cnpj': instance.cnpj,
      'tipo': instance.tipo,
      'porte': instance.porte,
      'nome': instance.nome,
      'fantasia': instance.fantasia,
      'abertura': instance.abertura,
      'atividadePrincipal':
          instance.atividadePrincipal?.map((e) => e.toJson()).toList(),
      'atividadesSecundarias':
          instance.atividadesSecundarias?.map((e) => e.toJson()).toList(),
      'naturezaJuridica': instance.naturezaJuridica,
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
      'dataSituacao': instance.dataSituacao,
      'motivoSituacao': instance.motivoSituacao,
      'situacaoEspecial': instance.situacaoEspecial,
      'dataSituacaoEspecial': instance.dataSituacaoEspecial,
      'capitalSocial': instance.capitalSocial,
      'qsa': instance.qsa?.map((e) => e.toJson()).toList(),
      'billing': instance.billing?.toJson(),
    };
