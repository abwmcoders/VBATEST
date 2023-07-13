import 'package:bloc_signin_test/src/feature/auth/bloc/auth_bloc.dart';
import 'package:bloc_signin_test/src/feature/auth/bloc/auth_event.dart';
import 'package:bloc_signin_test/src/feature/auth/bloc/auth_state.dart';
import 'package:bloc_signin_test/src/feature/home/home.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../components/extensions.dart';
import '../components/social_handles.dart';
import '../../../constants.dart';

class SignIn extends StatefulWidget {
  SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  // text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  AuthBloc? authBloc;

  @override
  void initState() {
    authBloc = BlocProvider.of<AuthBloc>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            if (kDebugMode) {
              print("This button is not required but added anyway");
            }
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: AppConstants.kWhiteColor,
          ),
        ),
        centerTitle: true,
        title: const Text(
          "Log In",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: AppConstants.kWhiteColor,
          ),
        ),
      ),
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is UserLoginSuccess) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Home(),
              ),
            );
          }
        },
        child: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              children: [
                FormArea(
                  emailController: emailController,
                  passwordController: passwordController,
                  onTap: () {
                    print("Button is pressed");
                    authBloc!.add(
                      LoginButtonPressed(
                        email: emailController.text,
                        password: passwordController.text,
                      ),
                    );
                  },
                ),
                const SizedBox(height: 30),
                msg,
                const OptionalSignIn(),
                const SizedBox(height: 10),
                const SocialHandles(),
                const SizedBox(height: 10),
                const NoAccount()
              ],
            ),
          ),
        )),
      ),
    );
  }

  final msg = BlocBuilder<AuthBloc, AuthState>(
    builder: (context, state) {
      if (state is LoginErrorState) {
        // var snackBar = SnackBar(
        //   content: Text(state.message!),
        // );
        // ScaffoldMessenger.of(context).showSnackBar(snackBar);
        Navigator.pop(context);
        return Text(state.message!);
      } else if (state is LoginLoadingState) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      } else {
        return Container();
      }
    },
  );
}
