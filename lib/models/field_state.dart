class FieldState {
  final List<int?> cells;
  FieldState(this.cells);

  FieldState.base() : cells = [...List.generate(8, (index) => index + 1), null];

  @override
  bool operator ==(Object other) {
    if (other is! FieldState || other.cells.length != cells.length) return false;
    for (int i = 0; i < cells.length; i++) {
      if (cells[i] != other.cells[i]) return false;
    }
    return true;
  }

  @override
  int get hashCode {
    int sum = 0;
    for (int i = 0; i < cells.length; i++) {
      sum += i * (cells[i] ?? 1);
    }
    return sum;
  }
}
