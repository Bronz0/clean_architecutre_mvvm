import 'package:clean_architecture_mvvm/presentation/ressources/strings_manager.dart';
import 'package:clean_architecture_mvvm/presentation/splash/splash.dart';
import 'package:clean_architecture_mvvm/presentation/store_details/store_details.dart';
import 'package:flutter/material.dart';

import '../login/login.dart';
import '../main/main_view.dart';
import '../onboarding/onboarding.dart';
import '../register/register.dart';
import '../forget_password/forget_password.dart';

class Routes{
  static const String splashRoute = '/';
  static const String onBoardingRoute = '/onBoarding';
  static const String loginRoute = '/login';
  static const String registerRoute = '/register';
  static const String forgetPasswordRoute = '/forgetPassword';
  static const String mainRoute = '/main';
  static const String storeDetailsRoute = '/storeDetails';
}


class RouteGenerator{
  static Route<dynamic> getRoute(RouteSettings routeSettings){
    switch (routeSettings.name){
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (context) => SplashView());
      case Routes.onBoardingRoute:
      return MaterialPageRoute(builder: (context) => OnBoardingView());
      case Routes.loginRoute:
      return MaterialPageRoute(builder: (context) => LoginView());
      case Routes.registerRoute:
      return MaterialPageRoute(builder: (context) => RegisterView());
      case Routes.mainRoute:
      return MaterialPageRoute(builder: (context) => MainView());
      case Routes.forgetPasswordRoute:
      return MaterialPageRoute(builder: (context) => ForgetPasswordView());
      case Routes.storeDetailsRoute:
      return MaterialPageRoute(builder: (context) => StoreDetailsView());
      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute(){
    return MaterialPageRoute(builder: (_) => Scaffold(
      appBar: AppBar(title: const Text(AppStrings.noRouteFound)),
      body: const Center(
        child: Text(AppStrings.noRouteFound),
      ),
    ));
  }
}



