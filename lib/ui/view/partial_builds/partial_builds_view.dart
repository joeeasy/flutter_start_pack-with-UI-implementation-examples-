import 'package:flutter/material.dart';
import 'package:skeletalarchitecture/ui/view/partial_builds/partial_builds_viewModel.dart';
import 'package:stacked/stacked.dart';

class PartialBuildsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PartialBuildsViewModel>.nonReactive(
      builder: (model, context, child) => Container(),
      viewModelBuilder: () => PartialBuildsViewModel(),
    );
  }
}
