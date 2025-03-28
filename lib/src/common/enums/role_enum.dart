import 'package:json_annotation/json_annotation.dart';

enum Role {
  @JsonValue('Administrador')
  administrator('Administrador'),
  @JsonValue('Dependiente')
  clerk('Dependiente'),
  @JsonValue('Cajero')
  cashier('Cajero'),
  @JsonValue('Economico')
  economic('Economico'),
  @JsonValue('Consultor')
  consult('Consultor');

  static String toJson(Role rol) => rol.value;

  static Role fromJson(String value) =>
      Role.values.firstWhere((rol) => rol.value.toUpperCase() == value.toUpperCase());

  const Role(this.value);

  final String value;
}
