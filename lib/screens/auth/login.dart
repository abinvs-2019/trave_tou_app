import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:auth_buttons/auth_buttons.dart'
    show GoogleAuthButton, AuthButtonStyle, AuthButtonType, AuthIconType;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tourist_app/application/auth/bloc/auth_bloc.dart';
import 'package:tourist_app/config/globals.dart';
import 'package:tourist_app/screens/home/home.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.isLoggedIn) {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const HomePage()));
        } else if (state.isLogging) {
          showBottomSheetWithData(
              context,
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircularProgressIndicator(strokeWidth: 2),
                      Text('Logging In..', style: GoogleFonts.ptSans())
                    ],
                  ),
                ),
              ),
              false);
        } else {
          Fluttertoast.showToast(msg: 'Error Occured while loggin in');
        }
      },
      child: Scaffold(
        body: Center(
          child: GestureDetector(
            child: GoogleAuthButton(
              onPressed: () {
                context.read<AuthBloc>().add(const AuthEvent.googleLogin());
              },
              style: const AuthButtonStyle(buttonType: AuthButtonType.icon),
            ),
          ),
        ),
      ),
    );
  }
}
