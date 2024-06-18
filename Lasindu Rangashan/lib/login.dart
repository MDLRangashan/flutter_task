import 'package:flutter/material.dart';
import 'firebasefunctions.dart';
import 'home.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isLoading = false; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: _isLoading
            ? CircularProgressIndicator() 
            : ElevatedButton(
          onPressed: () {
            setState(() {
              _isLoading = true; 
            });
            signInWithFacebook(context).then((success) {
              setState(() {
                _isLoading = false; 
              });
              if (success) {
                    Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                );
              } else {

                     ScaffoldMessenger.of(context).showSnackBar(
                     SnackBar(content: Text('Facebook sign-in Fail')),
                );
                 
              }
            });
          },
          child: Text("Login With Facebook"),
        ),
      ),
    );
  }
}
