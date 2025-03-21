

extension ListExtensions<T> on List<T> {
  T? getOrNull(int index) {
    if (index < 0 || index >= this.length) {
      return null;
    }
    return this[index];
  }
}

extension ListExtensionsExt<T> on List<T?> {
  T? getOrNull(int index) {
    if (index < 0 || index >= length) {
      return null;
    }
    return this[index];
  }
}


