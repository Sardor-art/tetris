import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tetris/blocks/Iblock.dart';
import 'package:tetris/game.dart';

import 'blocks/Jblock.dart';
import 'blocks/Lblock.dart';
import 'blocks/Sblock.dart';
import 'blocks/Tblock.dart';
import 'blocks/Zblock.dart';
import 'blocks/block.dart';
import 'blocks/sqBlock.dart';

Block getRandomBlock() {
  int randomNr = Random().nextInt(7);
  switch (randomNr) {
    case 0:
      return IBlock(BOARD_WIDTH);
    case 1:
      return JBlock(BOARD_WIDTH);
    case 2:
      return LBlock(BOARD_WIDTH);
    case 3:
      return SBlock(BOARD_WIDTH);
    case 4:
      return sqBlock(BOARD_WIDTH);
    case 5:
      return TBlock(BOARD_WIDTH);
    case 6:
      return ZBlock(BOARD_WIDTH);
  }
}

Widget getTetrisPoint(Color color) {
  return Container(
    width: POINT_SIZE,
    height: POINT_SIZE,
    decoration: new BoxDecoration(color: color, shape: BoxShape.rectangle),
  );
}

Widget getGameOverText(int score) {
  return Center(
    child: Text(
      'Game Over\nEnd Score: $score',
      style: TextStyle(
          fontSize: 35.0,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
          shadows: [
            Shadow(
                color: Colors.black, blurRadius: 3.0, offset: Offset(2.0, 2.0))
          ]),
    ),
  );
}
