import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';


Future<bool> signInWithFacebook(BuildContext context) async {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  try {
    final LoginResult result = await FacebookAuth.instance.login();

    switch (result.status) {
      case LoginStatus.success:
        final AccessToken? accessToken = result.accessToken;
        if (accessToken != null) {
          final AuthCredential facebookCredential =
          FacebookAuthProvider.credential(accessToken.tokenString);
          await _auth.signInWithCredential(facebookCredential);
          return true; 
        } else {
          return false; 
        }
      case LoginStatus.cancelled:
        return false; 
      case LoginStatus.failed:
        return false; 
      default:
        return false; 
    }
  } on FirebaseAuthException catch (e) {
    return false; 
  }
}
