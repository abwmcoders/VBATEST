import 'package:bloc_signin_test/src/feature/auth/bloc/auth_bloc.dart';
import 'package:bloc_signin_test/src/feature/auth/bloc/auth_state.dart';
import 'package:bloc_signin_test/src/feature/auth/repository/auth_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'src/constants.dart';
import 'src/feature/auth/ui/sign.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=> AuthBloc(LoginInitState(), AuthRepository(),),),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: AppConstants.scaffoldBackground,
          primarySwatch: Colors.blue,
          fontFamily: "MTh"
        ),
        home: SignIn(),
      ),
    );
  }
}
