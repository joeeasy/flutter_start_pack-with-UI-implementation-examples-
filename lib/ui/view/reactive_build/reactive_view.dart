import 'package:flutter/material.dart';
import 'package:skeletalarchitecture/ui/view/smart_widgets/double_increase_counter/double_increase_counter_view.dart';
import 'package:skeletalarchitecture/ui/view/smart_widgets/single_increase_counter/single_increase_counter_view.dart';

class ReactiveBuild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SingleIncreaseCounter(),
            SizedBox(
              width: 50,
            ),
            DoubleIncreaseCounter(),
          ],
        ),
      ),
    );
  }
}
