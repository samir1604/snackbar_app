import 'package:multiple_result/multiple_result.dart';

import '../core.dart';

abstract interface class UseCase<T, P> {
  FResult<T, HttpFailure> call({required P params});
}