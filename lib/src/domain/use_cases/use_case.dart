import 'package:multiple_result/multiple_result.dart';
import '../../core/exceptions/failure.dart';

abstract interface class UseCase<T, P> {
  Future<Result<T, Failure>> call({required P params});
}