import 'package:collection/collection.dart';
import 'package:flutter_puzzle/models/field_state.dart';
import 'package:flutter_puzzle/services/move_executor.dart';
import 'dart:math' as math;

class PuzzleSolver {
  late FieldState terminateState;

  FieldState _buildTerminateState(int length) => FieldState(
        List.generate(length, (index) => index == length - 1 ? null : index + 1),
      );

  List<FieldState> solve(FieldState state) {
    terminateState = _buildTerminateState(state.cells.length);
    final moveExecutor = MoveExecutor();
    final List<_SolverGraphNode> notCheckedNodes = List.empty(growable: true);
    final List<_SolverGraphNode> checkedNodes = List.empty(growable: true);

    var baseNode = _SolverGraphNode(state, null, terminateState);
    while (baseNode.approxRemainingWay > 0) {
      checkedNodes.add(baseNode);

      final availableNodes = _getAvailableNodes(moveExecutor, baseNode);
      for (var node in availableNodes) {
        var equalNonCheckedNode = notCheckedNodes.firstWhereOrNull((l) => l.currentState == node.currentState);
        var equalCheckedNode = checkedNodes.firstWhereOrNull((l) => l.currentState == node.currentState);

        if (equalNonCheckedNode != null && node.approxTotalWay < equalNonCheckedNode.approxTotalWay) {
          notCheckedNodes.remove(equalNonCheckedNode);
        }

        if (equalCheckedNode == null) {
          notCheckedNodes.add(node);
        }
      }

      notCheckedNodes.sort((s1, s2) => s1.approxTotalWay.compareTo(s2.approxTotalWay));
      baseNode = notCheckedNodes.first;
      notCheckedNodes.removeAt(0);
    }

    return _buildResultList(baseNode);
  }

  Iterable<_SolverGraphNode> _getAvailableNodes(MoveExecutor moveExecutor, _SolverGraphNode baseNode) {
    return moveExecutor.getAvailableActions(baseNode.currentState).map(
          (action) => _SolverGraphNode(moveExecutor.swap(baseNode.currentState, action), baseNode, terminateState),
        );
  }

  List<FieldState> _buildResultList(_SolverGraphNode node) {
    _SolverGraphNode? resultStepNode = node;
    final List<FieldState> resultList = List.empty(growable: true);
    while (resultStepNode != null) {
      resultList.add(resultStepNode.currentState);
      resultStepNode = resultStepNode.previousState;
    }
    return resultList;
  }
}

class _SolverGraphNode {
  FieldState currentState;
  _SolverGraphNode? previousState;
  late int approxTotalWay;
  int passedWay;
  int approxRemainingWay;

  _SolverGraphNode(this.currentState, this.previousState, FieldState terminateState)
      : approxRemainingWay = _calculateDistance(currentState, terminateState),
        passedWay = previousState == null ? 0 : previousState.passedWay + 1 {
    approxTotalWay = passedWay + approxRemainingWay;
  }

  static int _calculateDistance(FieldState state1, FieldState state2) {
    int result = 0;
    int rectSize = math.sqrt(state1.cells.length).toInt();
    for (var i = 0; i < state1.cells.length; i++) {
      var state2Index = state2.cells.indexOf(state1.cells[i]);
      var absDistance = (state2Index - i).abs();
      final numbersDistance = (absDistance / rectSize).floor() + absDistance % rectSize;
      result += numbersDistance * (state1.cells.length - 1) * 1;
    }
    return result;
  }

  @override
  String toString() {
    final squareSize = math.sqrt(currentState.cells.length).toInt();
    String resultString = '';
    for (int i = 0; i < squareSize; i++) {
      resultString += currentState.cells.skip(i * squareSize).take(squareSize).join(' ') + '\n';
    }
    resultString += 'f=$approxTotalWay, g=$passedWay, h=$approxRemainingWay\n';
    return resultString;
  }
}
