import 'dart:async';

class InMemoryCache {
  final Map<String, dynamic> _cache = {};
  final Map<String, Timer> _timers = {};

  void write<T>({
    required String key,
    required T value,
    Duration ttl = Duration.zero,
  }) {
    _cache[key] = value;
    if (ttl != Duration.zero) {
      _timers[key] = Timer(ttl, () => _cache.remove(key));
    }
  }

  T? read<T>(String key) => _cache[key] as T?;

  void remove(String key) {
    _cache.remove(key);
    _timers[key]?.cancel();
    _timers.remove(key);
  }

  void clear() {
    _cache.clear();
    for (var timer in _timers.values) {
      timer.cancel();
    }
    _timers.clear();
  }
}
