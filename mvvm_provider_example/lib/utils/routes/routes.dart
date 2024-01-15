
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_provider_example/utils/routes/routeName.dart';
import 'package:mvvm_provider_example/view/login_Screen.dart';
import 'package:mvvm_provider_example/view/signup_screen.dart';

import '../../view/home_screen.dart';

class Routes{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case RouteName.home:
        return MaterialPageRoute(builder: (BuildContext context) => const HomeScreen());
      case RouteName.login:
        return MaterialPageRoute(builder: (BuildContext context) =>  LoginScreen());
      case RouteName.signUp:
        return MaterialPageRoute(builder: (BuildContext context) => const SignUp_Screen());
        default: 
          return MaterialPageRoute(builder: (_){
            return Scaffold(
              body: Center(
                child: Text("No Route"),
              ),
            );
          });
    }

  }
}