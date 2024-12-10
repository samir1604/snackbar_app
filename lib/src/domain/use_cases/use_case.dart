abstract interface class UseCase<T, P> {
  Future<T> call({required P params});
}