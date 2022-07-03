import 'package:clean_architecture_mvvm/app/app.dart';
import 'package:flutter/material.dart';

class Tset extends StatelessWidget {
  const Tset({Key? key}) : super(key: key);

  void updateAppState() {
    MyApp.instance.appState = 10;
  }

  void getAppState() {
    print(MyApp.instance.appState);
  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}