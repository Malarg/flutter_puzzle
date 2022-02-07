import 'package:flutter/foundation.dart';
import 'package:flutter_puzzle/models/field_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_state.freezed.dart';

@freezed
class GameState with _$GameState {

  const factory GameState(FieldState fieldState) = CommonGameState;
  const factory GameState.shuffling(FieldState fieldState) = ShufflingGameState;
  const factory GameState.solving(FieldState fieldState) = SolvingGameState;
  const factory GameState.terminated(FieldState fieldState) = TerminatedGameState;
}
