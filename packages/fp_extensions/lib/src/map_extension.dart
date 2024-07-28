extension MapX<K, V> on Map<K, V> {
  /// get value if null or null
  T? getOrNull<T>(K key) => containsKey(key) ? this[key] as T? : null;

  /// get value
  T get<T>(K key) {
    if (containsKey(key)) {
      return this[key]! as T;
    } else {
      throw Exception('Key not found');
    }
  }

  /// get value if null or null
  T getOrDefault<T>(K key, T defaultValue) {
    if (containsKey(key)) {
      return this[key]! as T;
    } else {
      return defaultValue;
    }
  }

  /// get values list
  List<V> get valuesList => values.toList();

  /// get keys list
  List<K> get keysList => keys.toList();

  /// get entries list
  List<MapEntry<K, V>> get entriesList => entries.toList();

  /// merge two maps into one
  /// if the same key exists, the value of the other map will be used
  Map<K, V> merge(Map<K, V> other) {
    return {...this, ...other};
  }
}
