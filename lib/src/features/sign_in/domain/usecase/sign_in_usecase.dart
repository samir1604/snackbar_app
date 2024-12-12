import 'package:multiple_result/multiple_result.dart';

import '../../../../core/exceptions/failure.dart';
import '../../data/dtos/sign_in_request.dart';
import '../entities/user.dart';
import '../repositories/sign_in_repository.dart';
import '../../../../domain/use_cases/use_case.dart';
import '../params/sign_in_params.dart';

class SignInUseCase implements UseCase<User, SignInParams> {
  const SignInUseCase(this._repository);

  final SignInRepository _repository;

  @override
  Future<Result<User, Failure>> call({required SignInParams params}) async {
    try {
      final request = SignInRequest(
        user: params.username,
        password: params.password,
      );

      final response = await _repository.signIn(request);

      return Success(response.toUser());
    } on Failure catch (e) {
      return Error(e);
    } catch (e, stackTrace) {
      return Error(Failure(
        message: e.toString(),
        exception: e as Exception,
        stackTrace: stackTrace,
      ));
    }
  }
}
