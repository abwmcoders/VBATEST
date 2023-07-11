import 'package:flutter/material.dart';

import 'src/constants.dart';
import 'src/pages/auth/sign.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: AppConstants.scaffoldBackground,
        primarySwatch: Colors.blue,
      ),
      home: SignIn(),
    );
  }
}
