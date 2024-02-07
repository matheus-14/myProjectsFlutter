// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cnpj_normal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CNPJNormal _$CNPJNormalFromJson(Map<String, dynamic> json) => CNPJNormal(
      cnpj: json['cnpj'] as String? ?? "",
      porte: json['porte'] as String? ?? "",
      nome: json['nome'] as String? ?? "",
      logradouro: json['logradouro'] as String? ?? "",
      numero: json['numero'] as String? ?? "",
      complemento: json['complemento'] as String? ?? "",
      bairro: json['bairro'] as String? ?? "",
      cep: json['cep'] as String? ?? "",
      uf: json['uf'] as String? ?? "",
      capitalSocial: json['capitalSocial'] as String? ?? "",
      qsa: json['qsa'] as String? ?? "",
      situacaoEspecial: json['situacaoEspecial'] as String? ?? "",
      dataSituacaoEspecial: json['dataSituacaoEspecial'] as String? ?? "",
    );

Map<String, dynamic> _$CNPJNormalToJson(CNPJNormal instance) =>
    <String, dynamic>{
      'cnpj': instance.cnpj,
      'porte': instance.porte,
      'nome': instance.nome,
      'logradouro': instance.logradouro,
      'numero': instance.numero,
      'complemento': instance.complemento,
      'bairro': instance.bairro,
      'cep': instance.cep,
      'uf': instance.uf,
      'capitalSocial': instance.capitalSocial,
      'qsa': instance.qsa,
      'situacaoEspecial': instance.situacaoEspecial,
      'dataSituacaoEspecial': instance.dataSituacaoEspecial,
    };
