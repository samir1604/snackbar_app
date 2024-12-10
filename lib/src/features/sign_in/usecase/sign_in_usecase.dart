import '../../../common/dtos/sign_in/sign_in_request.dart';
import '../../../domain/entities/user.dart';
import '../../../domain/repositories/sign_in_repository.dart';
import '../../../domain/use_cases/use_case.dart';
import '../params/sign_in_params.dart';

class SignInUseCase implements UseCase<User, SignInParams> {
  const SignInUseCase(this._repository);

  final SignInRepository _repository;

  @override
  Future<User> call({required SignInParams params}) async {
    final request = SignInRequest(
      user: params.username,
      password: params.password,
    );

    final response = await _repository.signIn(request);

    return response.mapTo();
  }
}
