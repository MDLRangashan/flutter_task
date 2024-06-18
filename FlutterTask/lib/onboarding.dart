import 'package:flutter/material.dart';

import 'onboarding_facebook.dart';
//import 'onboarding_divider.dart';
//import 'onboarding_facebook.dart';
import 'onboarding_func.dart';
import 'onboarding_signup.dart';
//import 'onboarding_github.dart';
//import 'onboarding_google.dart';
//import 'onboarding_password.dart';
//import 'onboarding_signup.dart';
//import 'onboarding_welcome.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> with Func {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        "mobtereststudio",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignUp()));
                          },
                          style: OutlinedButton.styleFrom(
                              shape: const StadiumBorder(),
                              backgroundColor: Colors.blue,
                              foregroundColor: Colors.white),
                          child: const Text("Sign up"))
                    ],
                  ),
                  const CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.blue,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 50.0),
                    child: Text(
                      "Sign In",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                  ),
                  const Text("Sign in to join the team"),
                  //const PasswordAuthentication(),
                  //const CustomDivider(),
                  //const GoogleAuthentication(),
                  const FacebookAuthentication(),
                ],
              ),
            ),
          )),
    );
  }
}