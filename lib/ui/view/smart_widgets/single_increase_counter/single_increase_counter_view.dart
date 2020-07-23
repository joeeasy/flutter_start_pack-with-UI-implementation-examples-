import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'single_increment_counter_model.dart';

class SingleIncreaseCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SingleCounterModel>.reactive(
      builder: (context, model, child) => GestureDetector(
        onDoubleTap: () => model.incrementValue(),
        child: Center(
          child: Container(
            width: 150,
            height: 100,
            color: Colors.lightBlue,
            child: RichText(
                text: TextSpan(children: <TextSpan>[
              TextSpan(
                  text: 'Tap to Increment counter',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(
                text: "${model.counter ?? '0'}",
              ),
            ])),
          ),
        ),
      ),
      viewModelBuilder: () => SingleCounterModel(),
    );
  }
}
