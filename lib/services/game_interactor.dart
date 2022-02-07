import 'dart:async';

import 'package:flutter_puzzle/models/game_state.dart';
import 'package:flutter_puzzle/models/move_action.dart';
import 'package:flutter_puzzle/services/move_executor.dart';
import 'package:flutter_puzzle/services/puzzle_solver.dart';
import 'dart:math' as math;

const animationStepDuration = Duration(milliseconds: 100);

class GameInteractor {
  final MoveExecutor _executor = MoveExecutor();
  GameState _currentState;

  final StreamController<GameState> _gameStateController;
  Stream<GameState> get gameStateStream => _gameStateController.stream;
  late Timer _shuffleTimer;
  late Timer _solveTimer;

  GameInteractor(this._currentState) : _gameStateController = StreamController.broadcast() {
    _gameStateController.add(_currentState);
  }

  void startShuffle() {
    _shuffleTimer = _buildShuffleTimer();
  }

  void stopShuffle() {
    _shuffleTimer.cancel();
    _currentState = GameState(_currentState.fieldState);
    _gameStateController.add(_currentState);
  }

  void applyMoveAction(MoveAction action) {
    try {
      _currentState = GameState(_executor.swap(_currentState.fieldState, action));
      _gameStateController.add(_currentState);
    } catch (e) {
      _gameStateController.addError(e);
    }
  }

  void onCellClicked(int cellIndex) {
    final emptyCellIndex = _currentState.fieldState.cells.indexOf(null);
    final fieldSize = math.sqrt(_currentState.fieldState.cells.length).toInt();
    final indexedDiff = cellIndex - emptyCellIndex;
    if (indexedDiff == 1) {
      applyMoveAction(MoveAction.right);
    } else if (indexedDiff == -1) {
      applyMoveAction(MoveAction.left);
    } else if (indexedDiff == fieldSize) {
      applyMoveAction(MoveAction.bottom);
    } else if (indexedDiff == -fieldSize) {
      applyMoveAction(MoveAction.top);
    }
  }

  void startAutosolve() {
    final solvedList = PuzzleSolver().solve(_currentState.fieldState);
    _solveTimer = Timer.periodic(animationStepDuration, (timer) {
      if (solvedList.isEmpty) {
        _solveTimer.cancel();
      } else {
        if (solvedList.length == 1) {
          _currentState = GameState.terminated(solvedList.last);
        } else {
          _currentState = GameState.solving(solvedList.last);
        }
        _gameStateController.add(_currentState);
        solvedList.removeLast();
      }
    });
  }

  void stopAutosolve() {
    _solveTimer.cancel();
  }

  Timer _buildShuffleTimer() => Timer.periodic(animationStepDuration, (timer) {
        _currentState = GameState.shuffling(_executor.swapRandom(_currentState.fieldState));
        _gameStateController.add(_currentState);
      });
}
