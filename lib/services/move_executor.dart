import 'dart:math' as math;

import 'package:flutter_puzzle/models/field_state.dart';
import 'package:flutter_puzzle/models/move_action.dart';

class MoveExecutor {
  List<MoveAction> getAvailableActions(FieldState state) {
    int emptyIndex = _getEmptyIndex(state);
    int fieldSize = _getFieldSize(state);
    final result = List<MoveAction>.empty(growable: true);
    if (_isSwapTopAvailable(emptyIndex, fieldSize)) {
      result.add(MoveAction.top);
    }
    if (_isSwapBottomAvailable(emptyIndex, fieldSize)) {
      result.add(MoveAction.bottom);
    }
    if (_isSwapLeftAvailable(emptyIndex, fieldSize)) {
      result.add(MoveAction.left);
    }
    if (_isSwapRightAvailable(emptyIndex, fieldSize)) {
      result.add(MoveAction.right);
    }
    return result;
  }

  FieldState swap(FieldState state, MoveAction action) {
    int emptyIndex = _getEmptyIndex(state);
    int fieldSize = _getFieldSize(state);
    if (action == MoveAction.top && _isSwapTopAvailable(emptyIndex, fieldSize)) {
      return _swapTop(state, emptyIndex, fieldSize);
    }
    if (action == MoveAction.bottom && _isSwapBottomAvailable(emptyIndex, fieldSize)) {
      return _swapBottom(state, emptyIndex, fieldSize);
    }
    if (action == MoveAction.left && _isSwapLeftAvailable(emptyIndex, fieldSize)) {
      return _swapLeft(state, emptyIndex);
    }
    if (action == MoveAction.right && _isSwapRightAvailable(emptyIndex, fieldSize)) {
      return _swapRight(state, emptyIndex);
    }
    throw Exception('This action is not available');
  }

  MoveAction? _lastAction;
  FieldState swapRandom(FieldState state) {
    final actions = getAvailableActions(state);
    math.Random random = math.Random();

    if (_lastAction != null) {
      if (_lastAction == MoveAction.left) {
        actions.remove(MoveAction.right);
      }
      if (_lastAction == MoveAction.right) {
        actions.remove(MoveAction.left);
      }
      if (_lastAction == MoveAction.top) {
        actions.remove(MoveAction.bottom);
      }
      if (_lastAction == MoveAction.bottom) {
        actions.remove(MoveAction.top);
      }
    }
    
    final action = actions[random.nextInt(actions.length)];
    _lastAction = action;
    return swap(state, action);
  }

  int _getFieldSize(FieldState state) => math.sqrt(state.cells.length).toInt();

  int _getEmptyIndex(FieldState state) => state.cells.indexOf(null);

  bool _isSwapTopAvailable(int emptyIndex, int fieldSize) {
    return emptyIndex >= fieldSize;
  }

  bool _isSwapBottomAvailable(int emptyIndex, int fieldSize) {
    return emptyIndex < math.pow(fieldSize, 2) - fieldSize;
  }

  bool _isSwapLeftAvailable(int emptyIndex, int fieldSize) {
    return !List.generate(fieldSize, (index) => index * fieldSize).contains(emptyIndex);
  }

  bool _isSwapRightAvailable(int emptyIndex, int fieldSize) {
    return !List.generate(fieldSize, (index) => index * fieldSize + fieldSize - 1).contains(emptyIndex);
  }

  FieldState _swapTop(FieldState state, int emptyIndex, int fieldSize) {
    int emptyIndex = _getEmptyIndex(state);
    int fieldSize = _getFieldSize(state);
    int topIndex = emptyIndex - fieldSize;
    return FieldState(_swapValuesWithIndex(state.cells, emptyIndex, topIndex));
  }

  FieldState _swapBottom(FieldState state, int emptyIndex, int fieldSize) {
    int emptyIndex = _getEmptyIndex(state);
    int fieldSize = _getFieldSize(state);
    int bottomIndex = emptyIndex + fieldSize;
    return FieldState(_swapValuesWithIndex(state.cells, emptyIndex, bottomIndex));
  }

  FieldState _swapLeft(FieldState state, int emptyIndex) {
    int leftIndex = emptyIndex - 1;
    return FieldState(_swapValuesWithIndex(state.cells, emptyIndex, leftIndex));
  }

  FieldState _swapRight(FieldState state, int emptyIndex) {
    int rightIndex = emptyIndex + 1;
    return FieldState(_swapValuesWithIndex(state.cells, emptyIndex, rightIndex));
  }

  List<int?> _swapValuesWithIndex(List<int?> list, int firstIndex, int secondIndex) {
    final result = List<int?>.from(list);
    final tempValue = result[firstIndex];
    result[firstIndex] = result[secondIndex];
    result[secondIndex] = tempValue;
    return result;
  }
}
