import 'package:bloc_demonstration/bloc_model/bloc_model.dart';
import 'package:bloc_demonstration/bloc_model/generic_bloc_provider.dart';
import 'package:flutter/material.dart';

class Child1 extends StatelessWidget {
  ColorBloc colorBloc;
  @override
  Widget build(BuildContext context) {
    //geeting the instance of our model created at Parent
    colorBloc = BlocProvider.of(context);
    return Column(
      children: <Widget>[
        Container(
          child: StreamBuilder(
            initialData: 0,
            stream: colorBloc.colorStream,
            builder: (BuildContext context, snapShot) => Center(
                  child: Text('${snapShot.data}'),
                ),
          ),
        ),
      ],
    );
  }
}
