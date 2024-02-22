// ignore_for_file: non_constant_identifier_names, unnecessary_this, avoid_print, unused_local_variable, file_names

import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import '../funcoes/fJson.dart';

part 'MCnpjAtividadePrincipal.g.dart';

@JsonSerializable(explicitToJson: true)
class AtividadePrincipal {
  String? code = "";
  String? text = "";

	AtividadePrincipal({
		this.code = "",
		this.text = "",
  });

  AtividadePrincipal copyWith({
	  String? code,
		String? text,
	}) {
	  return AtividadePrincipal(
		  code: code ?? this.code,
		  text: text ?? this.text,
	);
	}

  factory AtividadePrincipal.fromJson(Map<String, dynamic> json) => _$AtividadePrincipalFromJson(json);
  Map<String, dynamic> toJson() => _$AtividadePrincipalToJson(this);

  factory AtividadePrincipal.fromJsonString(String jsonS) => AtividadePrincipal.fromJson(jsonDecode(jsonS));
  String toJsonString() => jsonEncode(_$AtividadePrincipalToJson(this));

  static List<AtividadePrincipal> lAtividadePrincipalFromJson(String str) => List<AtividadePrincipal>.from(jsonDecode(str).map((x) => AtividadePrincipal.fromJson(x)));
  static List<AtividadePrincipal> lAtividadePrincipalFromMap(List<Map<String, Object?>> lMap) => lMap.map((x) => AtividadePrincipal.fromJson(x)).toList();

  static String lAtividadePrincipalToJson(List<AtividadePrincipal> data) => jsonEncode(List<dynamic>.from(data.map((x) => x.toJson())), toEncodable: FJson.dataHoraSeralizer);
}