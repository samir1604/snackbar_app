import '../core.dart';

abstract interface class UseCase<T, P> {
  FResult<T, HttpFailure> call({required P params, Object? extra});
}