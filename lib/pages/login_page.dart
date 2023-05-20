import 'package:auth_application/components/my_button.dart';
import 'package:auth_application/pages/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../components/my_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //sign in user function
  Future<void> userSignIn() async {
    try {
  final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: usernameController.text,
    password: passwordController.text
  );
  print('Signed in.');
   Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const HomePage()),
  );
  // Navigator.push(context, HomePage());

} on FirebaseAuthException catch (e) {
  if (e.code == 'user-not-found') {
    print('No user found for that email.');
    AlertDialog(content: Text('No user Found!'),);
  } else if (e.code == 'wrong-password') {
    print('Wrong password provided for that user.');
    AlertDialog(content: Text('Wrong Password!'),);
  }
}
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // const SizedBox(
              //   height: 100,
              // ),
              //logo
              const Icon(
                Icons.lock,
                size: 100,
                color: Colors.black87,
              ),

              const SizedBox(
                height: 50,
              ),
              //welcome back,long time no see
              const Text(
                'Welcome back, You\'ve been missed!',
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),

              const SizedBox(
                height: 25,
              ),
              //username textfield
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),
              const SizedBox(
                height: 25,
              ),
              //password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
              //forgot password
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      'Forget Password?',
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              //login button
              MyButton(onTap: userSignIn,text: 'Login'),
              const SizedBox(height: 50),
              //continue with google
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey.shade400,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text('or continue with'),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 30,
              ),
              //google button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey.shade300,
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image.asset(
                        'assets/logos/google.png',
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Container(
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey.shade300,
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image.asset(
                        height: 60,
                        'assets/logos/facebook.png',
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              //not a member? sign up
              Text(
                'Not a member? Sign up',
                style: TextStyle(
                  color: Colors.grey[300],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
