import 'package:curso/view/home/home.dart';
import 'package:flutter/material.dart';

class MyAppProd extends StatelessWidget {
  const MyAppProd({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      theme: ThemeData.light(),
      home: const HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
