import 'package:skeletalarchitecture/app/locator.dart';
import 'package:skeletalarchitecture/services/counter_service.dart';
import 'package:stacked/stacked.dart';

class DoubleIncreaseCounterViewModel extends ReactiveViewModel {
  final _counterService = locator<CounterService>();
  int get counter => _counterService.counter;

  void doubleIncrementValue() {
    _counterService.doubleIncrementCounter();
    notifyListeners();
  }

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_counterService];
}