import 'package:flutter/cupertino.dart';
import 'package:sign_button/constants.dart';
import 'package:sign_button/create_button.dart';

class FacebookAuthentication extends StatefulWidget {
  const FacebookAuthentication({super.key});

  @override
  State<FacebookAuthentication> createState() => _FacebookAuthenticationState();
}

class _FacebookAuthenticationState extends State<FacebookAuthentication> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      height: 60,
        child: SignInButton(
          buttonType: ButtonType.facebook,
          width: MediaQuery.of(context).size.width,
          onPressed: (){},
      )
    );
  }
}

