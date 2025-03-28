import 'package:flutter_test/flutter_test.dart';
import 'package:snackbar_app/src/common/common.dart';
import 'package:snackbar_app/src/features/auth/auth.dart';

void main() {
  const id = 1;
  const name = 'John Doe';
  const userName = 'johndoe';
  const role = Role.administrator;
  const picture = 'https://example.com/avatar.jpg';

  const fullUser = User(
    id: id,
    name: name,
    userName: userName,
    role: role,
    picture: picture,
  );

  const minimalUser = User(
    id: 2,
    name: 'Jane Doe',
    role: Role.clerk,
  );

  final fullUserJson = {
    'id': id,
    'name': name,
    'userName': userName,
    'role': 'Administrador',
    'picture': picture,
  };

  final minimalUserJson = {
    'id': 2,
    'name': 'Jane Doe',
    'userName': null,
    'role': 'Dependiente',
    'picture': null,
  };

  // --------------------------------------------
  // Grupos de Prueba
  // --------------------------------------------
  group('User Entity', () {
    group('Constructor', () {
      test('creates instance with all fields', () {
        expect(fullUser.id, id);
        expect(fullUser.name, name);
        expect(fullUser.userName, userName);
        expect(fullUser.role, role);
        expect(fullUser.picture, picture);
      });

      test('creates instance with only required fields', () {
        expect(minimalUser.userName, isNull);
        expect(minimalUser.picture, isNull);
      });
    });

    group('fromJson()', () {
      test('parses complete JSON correctly', () {
        final user = User.fromJson(fullUserJson);
        expect(user, equals(fullUser));
      });

      test('parses minimal JSON correctly', () {
        final user = User.fromJson(minimalUserJson);
        expect(user, equals(minimalUser));
      });

      test('throws FormatException if required field is missing', () {
        expect(
          () => User.fromJson({'id': 1}), // Falta 'name' y 'role'
          throwsA(allOf(
            isA<Error>(),
            (error) => error.toString().contains('Null'),
          )),
        );
      });
    });

    group('toJson()', () {
      test('serializes complete user correctly', () {
        expect(fullUser.toJson(), fullUserJson);
      });

      test('serializes minimal user correctly', () {
        expect(minimalUser.toJson(), minimalUserJson);
      });
    });

    group('Equatable', () {
      test('props are [id, name]', () {
        expect(fullUser.props, [id, name]);
      });

      test('users with same id and name are equal', () {
        const user1 = User(id: 1, name: 'John', role: Role.administrator);
        const user2 = User(id: 1, name: 'John', role: Role.clerk);
        expect(user1, equals(user2));
      });

      test('users with different id or name are not equal', () {
        const user1 = User(id: 1, name: 'John', role: Role.administrator);
        const user2 = User(id: 2, name: 'John', role: Role.administrator);
        expect(user1, isNot(equals(user2)));
      });
    });
  });
}
