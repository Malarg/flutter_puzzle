import 'package:flutter/material.dart';
import 'package:flutter_puzzle/models/field_state.dart';
import 'package:flutter_puzzle/models/game_state.dart';
import 'package:flutter_puzzle/models/move_action.dart';
import 'package:flutter_puzzle/services/game_interactor.dart';
import 'package:flutter_puzzle/ui/common/wave_button.dart';
import 'dart:math' as math;

import 'assets/fonts.dart';
import 'assets/texts.dart';

const _cellsMargin = 8;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GameInteractor _gameInteractor = GameInteractor(GameState.terminated(FieldState.base()));
  late FieldState _lastValidState;
  MoveAction action = MoveAction.top;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(243, 248, 255, 1),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onHorizontalDragUpdate: (details) {
          int sensitivity = 8;
          if (details.delta.dx > sensitivity) {
            action = MoveAction.left;
          } else if (details.delta.dx < -sensitivity) {
            action = MoveAction.right;
          }
        },
        onVerticalDragUpdate: (details) {
          int sensitivity = 8;
          if (details.delta.dy > sensitivity) {
            action = MoveAction.top;
          } else if (details.delta.dy < -sensitivity) {
            action = MoveAction.bottom;
          }
        },
        onVerticalDragEnd: (_) {
          _gameInteractor.applyMoveAction(action);
        },
        onHorizontalDragEnd: (_) {
          _gameInteractor.applyMoveAction(action);
        },
        child: Center(
          child: StreamBuilder<GameState>(
            initialData: GameState.terminated(FieldState.base()),
            stream: _gameInteractor.gameStateStream,
            builder: (context, state) {
              if (state.hasData) {
                _lastValidState = state.data!.fieldState;
              }
              final screenWidth = MediaQuery.of(context).size.width;
              final cells = state.data?.fieldState.cells ?? _lastValidState.cells;
              final gridSize = math.sqrt(cells.length).toInt();
              final cellSize = (screenWidth - 32) / gridSize - _cellsMargin;
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Expanded(
                      child: Stack(
                        children: [
                          for (var i = 0; i < (cells.length); i++)
                            if (cells[i] != null)
                              AnimatedPositioned(
                                key: ValueKey(cells[i]),
                                left: _cellsMargin / 2 + (i % gridSize) * cellSize + _cellsMargin * (i % gridSize),
                                top: _cellsMargin / 2 +
                                    (i / gridSize).floor() * cellSize +
                                    _cellsMargin * (i / gridSize).floor(),
                                child: InkWell(
                                  onTap: () => _gameInteractor.onCellClicked(i),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color.fromRGBO(0, 204, 144, 1),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    width: cellSize,
                                    height: cellSize,
                                    child: Center(
                                      child: Text(cells[i].toString(), style: Fonts.size30WhiteMedium),
                                    ),
                                  ),
                                ),
                                duration: animationStepDuration,
                              ),
                        ],
                      ),
                    ),
                    WaveButton(
                      height: 60,
                      isLoading: false,
                      onTap: state.data is TerminatedGameState || state.data is CommonGameState
                          ? _gameInteractor.startShuffle
                          : state.data is ShufflingGameState
                              ? _gameInteractor.stopShuffle
                              : null,
                      text: state.data is ShufflingGameState ? Texts.stop : Texts.shuffle,
                      backgroundColor: Colors.blue,
                    ),
                    const SizedBox(height: 8),
                    WaveButton(
                      height: 60,
                      isLoading: false,
                      onTap: state.data is CommonGameState ? _gameInteractor.startAutosolve : null,
                      text: Texts.solve,
                      backgroundColor: Colors.green,
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
