// ignore_for_file: non_constant_identifier_names, unnecessary_this, avoid_print, unused_local_variable, unused_import, file_names

import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import '../funcoes/fJson.dart';

part 'MCnpjCnaesSecundarios.g.dart';

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