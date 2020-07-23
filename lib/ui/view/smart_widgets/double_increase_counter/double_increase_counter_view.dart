import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'double_increase_counter_model.dart';

class DoubleIncreaseCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DoubleIncreaseCounterViewModel>.reactive(
      builder: (context, model, child) => GestureDetector(
        onDoubleTap: () => model.doubleIncrementValue(),
        child: Container(
          width: 150,
          height: 100,
          color: Colors.redAccent,
          child: RichText(text: TextSpan(
            children: <TextSpan> [
              TextSpan(text: 'Tap to Increment counter', style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: "${model.counter ?? '0'}"),
            ]
          )),
        ),
      ),
      viewModelBuilder: () => DoubleIncreaseCounterViewModel(),
    );
  }
}
