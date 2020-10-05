import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:shattered_star/injection.dart';
import 'package:shattered_star/presentation/core/app_widget.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(AppWidget());
}
