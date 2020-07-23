import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:skeletalarchitecture/ui/view/partial_builds/partial_builds_viewModel.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_hooks/stacked_hooks.dart';

class PartialBuildsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PartialBuildsViewModel>.nonReactive(
      builder: (model, context, child) {
        print('========================================');
        print('PartialView Rebuilding');
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                _StringForm(),
                _TextAndValue(),
              ],
            ),
          ),
        );
      },
      viewModelBuilder: () => PartialBuildsViewModel(),
    );
  }
}

class _StringForm extends HookViewModelWidget<PartialBuildsViewModel> {
  _StringForm({Key key}) : super(key: key, reactive: false);

  @override
  Widget buildViewModelWidget(
    BuildContext context,
    PartialBuildsViewModel model,
  ) {
    var text = useTextEditingController();
    return TextField(
      controller: text,
      onChanged: model.updateString,
    );
  }
}

class _TextAndValue extends ViewModelWidget<PartialBuildsViewModel> {
  _TextAndValue({Key key}) : super(key: key, reactive: true);

  @override
  Widget build(BuildContext context, PartialBuildsViewModel model) {
    print('========================================');
    print('PartialView Rebuilding');
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Text(
        model.title ?? 'Value will appear here',
        style: TextStyle(
          fontSize: 24,
        ),
      ),
    );
  }
}
