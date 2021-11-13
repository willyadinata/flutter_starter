import 'package:flutter/material.dart';
import 'package:flutterstarter/presentation/app_theme.dart';
import 'package:flutterstarter/presentation/screens/counter_screen.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Starter',
      theme: themeData,
      home: const CounterScreen(),
    );
  }
}
