import 'package:auth_application/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'home_page.dart';

class AuthState extends StatelessWidget {
  const AuthState({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if(snapshot.hasData)
            return HomePage();
          
          else
            return LoginPage();
        },
      ),
    );
  }
}
