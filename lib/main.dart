import 'package:flutter/material.dart';
import 'package:skeletalarchitecture/app/locator.dart';
import 'package:skeletalarchitecture/app/router.gr.dart';
import 'package:skeletalarchitecture/ui/view/partial_builds/partial_builds_view.dart';
import 'package:skeletalarchitecture/ui/view/reactive_build/reactive_view.dart';
import 'package:stacked_services/stacked_services.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider archicture with stack',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
//      initialRoute: Routes.startupViewRoute,
      home: ReactiveBuild(),
      onGenerateRoute: Router().onGenerateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
    );
  }
}
