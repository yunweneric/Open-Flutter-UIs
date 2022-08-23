import 'package:flutter/material.dart';
import 'package:open_flutter_uis/start/splash_screen.dart';
import 'package:open_flutter_uis/utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.light(),
      home: SplashScreen(),
    );
  }
}
