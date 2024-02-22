// ignore_for_file: non_constant_identifier_names, unnecessary_this, avoid_print, unused_local_variable, file_names

import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import '../funcoes/fJson.dart';

part 'MCnpjAtividadesSecundarias.g.dart';

@JsonSerializable(explicitToJson: true)
class AtividadesSecundarias {
  String? code = "";
  String? text = "";

	AtividadesSecundarias({
		this.code = "",
		this.text = "",
  });

  AtividadesSecundarias copyWith({
	  String? code,
		String? text,
	}) {
	  return AtividadesSecundarias(
		  code: code ?? this.code,
		  text: text ?? this.text,
	);
  }

  factory AtividadesSecundarias.fromJson(Map<String, dynamic> json) => _$AtividadesSecundariasFromJson(json);
  Map<String, dynamic> toJson() => _$AtividadesSecundariasToJson(this);

  factory AtividadesSecundarias.fromJsonString(String jsonS) => AtividadesSecundarias.fromJson(jsonDecode(jsonS));
  String toJsonString() => jsonEncode(_$AtividadesSecundariasToJson(this));

  static List<AtividadesSecundarias> lAtividadesSecundariasFromJson(String str) => List<AtividadesSecundarias>.from(jsonDecode(str).map((x) => AtividadesSecundarias.fromJson(x)));
  static List<AtividadesSecundarias> lAtividadesSecundariasFromMap(List<Map<String, Object?>> lMap) => lMap.map((x) => AtividadesSecundarias.fromJson(x)).toList();

  static String lAtividadesSecundariasToJson(List<AtividadesSecundarias> data) => jsonEncode(List<dynamic>.from(data.map((x) => x.toJson())), toEncodable: FJson.dataHoraSeralizer);
}