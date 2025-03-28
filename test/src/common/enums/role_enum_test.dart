import 'package:flutter_test/flutter_test.dart';
import 'package:snackbar_app/src/common/common.dart';

void main() {
  final List<Role> allRoles = Role.values;

  final Map<Role, String> roleToJsonMap = {
    Role.administrator: 'Administrador',
    Role.clerk: 'Dependiente',
    Role.cashier: 'Cajero',
    Role.economic: 'Economico',
    Role.consult: 'Consultor',
  };

  group('Role Enum', () {
    test('values correct', (){
      expect(allRoles.length, 5);
      expect(allRoles, containsAllInOrder([
        Role.administrator,
        Role.clerk,
        Role.cashier,
        Role.economic,
        Role.consult,
      ]));
    });

    test('toJson() return correct values for all roles', (){
      for (final role in allRoles) {
        expect(Role.toJson(role), roleToJsonMap[role]);
      }
    });

    test('fromJson() parses all valid values (case-insensitive)', () {
      for (final entry in roleToJsonMap.entries) {
        final role = entry.key;
        final jsonValue = entry.value;

        // Prueba diferentes combinaciones de mayúsculas/minúsculas
        expect(Role.fromJson(jsonValue.toUpperCase()), role);
        expect(Role.fromJson(jsonValue.toLowerCase()), role);
        expect(Role.fromJson(jsonValue), role);
      }
    });

    test('fromJson() throws on invalid value', () {
      expect(() => Role.fromJson('ROL_INVALIDO'), throwsA(isA<StateError>()));
    });
  });
}