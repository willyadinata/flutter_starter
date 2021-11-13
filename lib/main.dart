import 'package:flutter/material.dart';
import 'package:flutterstarter/locator.dart';
import 'package:flutterstarter/presentation/app_widget.dart';

void main() {
  setupLocator();
  runApp(const AppWidget());
}
