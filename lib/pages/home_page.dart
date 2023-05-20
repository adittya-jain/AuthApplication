import 'package:auth_application/pages/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../components/my_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  void userSignOut(){
    FirebaseAuth.instance.signOut();
    
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          SizedBox(height: 100,),
          Center(child: Text('user is signed in')),
          // MyButton(onTap: userSignOut,text: 'Logout')
          SizedBox(height: 100,),
          GestureDetector(
            onTap: userSignOut,
            child: Container(child: Icon(Icons.logout),height: 20,width: 20,decoration: BoxDecoration(border: Border.all(color: Colors.black)),))
        ],
      ),
      
    );
  }
}