import 'package:multiple_result/multiple_result.dart';

import '../core.dart';

abstract interface class UseCase<T, P> {
  Future<Result<T, HttpClientException>> call({required P params});
}