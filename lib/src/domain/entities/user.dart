import 'package:equatable/equatable.dart';

import '../../common/enums/role_enum.dart';

final class User extends Equatable {
  const User({
    required this.id,
    required this.name,
    this.userName,
    required this.role,
    this.picture,
  });

  final int id;
  final String name;
  final String? userName;
  final Role role;
  final String? picture;

  @override
  List<Object?> get props => [id, name];
}
