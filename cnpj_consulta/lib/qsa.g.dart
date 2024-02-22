// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qsa.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
      nome: json['nome'] as String? ?? "",
      qual: json['qual'] as String? ?? "",
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
      'nome': instance.nome,
      'qual': instance.qual,
    };
