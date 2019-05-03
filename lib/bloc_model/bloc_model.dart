import 'dart:async';
import 'dart:math';
import 'package:bloc_demonstration/bloc_model/generic_bloc_provider.dart';
import 'package:flutter/material.dart';

class ColorBloc extends BlocBase {

  var _counterAll = 0;
// streams of Color
  StreamController streamListController = StreamController.broadcast();
// sink
  Sink get colorSink => streamListController.sink;
// stream
  Stream get colorStream => streamListController.stream;


// function to change the color
  changeColor() {

    colorSink.add(getRandomColor());
    print('changeColor');
  }

//disponsing our Stream
  @override
  dispose() {
    streamListController.close();
  }

  // Random Colour generator
  getRandomColor() {
    _counterAll = _counterAll + 1;
    //_counterAll = Random().nextInt(1000);
    return _counterAll;
  }
}

