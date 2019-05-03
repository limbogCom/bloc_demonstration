import 'package:bloc_demonstration/bloc_model/bloc_model.dart';
import 'package:bloc_demonstration/bloc_model/generic_bloc_provider.dart';
// import 'package:bloc_architecture/bloc_model/generic_bloc_provider.dart';
import 'package:bloc_demonstration/screeen/child1.dart';
import 'package:bloc_demonstration/screeen/child2.dart';
import 'package:flutter/material.dart';

class BlocDemo extends StatefulWidget {

  @override
  _BlocDemoState createState() => _BlocDemoState();
}

class _BlocDemoState extends State<BlocDemo> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "BLoC Architecture Demo",
      )),
      body: Container(
        child: Padding(
          padding: EdgeInsets.only(top: 100.0),
          child: BlocProvider(
            bloc: ColorBloc(),
            child: Column(
              children: <Widget>[
                Child1(),
                Child2(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
