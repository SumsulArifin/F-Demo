import 'package:flutter/material.dart';
import 'package:mvvm_provider_example/utils/routes/routeName.dart';
import 'package:mvvm_provider_example/utils/routes/routes.dart';
import 'package:mvvm_provider_example/utils/view_utils/size_utils.dart';
import 'package:mvvm_provider_example/view/login_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (BuildContext context, Orientation orientation, DeviceType deviceType) {
      return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: RouteName.login,
        onGenerateRoute: Routes.generateRoute,
      );
    },

    );
  }
}
