import 'package:json_annotation/json_annotation.dart';

enum Role {
  @JsonValue('Administrador')
  administrator('Administrador'),
  clerk('Dependiente');

  static String toJson(Role rol) => rol.value;

  static Role fromJson(String value) =>
      Role.values.firstWhere((rol) => rol.value == value);

  const Role(this.value);

  final String value;
}
