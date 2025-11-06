import 'package:curso/config/prod_version.dart';
import 'package:curso/viewmodels/home/home_viewmodels.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => HomeProvider())],
      child: const MyAppProd(),
    ),
  );
}
