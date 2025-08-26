import 'package:flutter/material.dart';

import '../home/home_screen.dart';

class LoginScreen extends StatefulWidget{
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => LoginState();
}

class LoginState extends State<LoginScreen>{

  Future<void> _handleGoogleSignIn() async {
    navigateToHomeScreen();
    // try {
    //   final account = await _googleSignIn.signIn();
    //   if (account != null) {
    //     ScaffoldMessenger.of(context).showSnackBar(
    //       SnackBar(content: Text("Welcome, ${account.displayName}!")),
    //     );
    //   }
    // } catch (error) {
    //   ScaffoldMessenger.of(context).showSnackBar(
    //     SnackBar(content: Text("Error: $error")),
    //   );
    // }
  }

  void navigateToHomeScreen() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => HomeScreen(userName: 'Bijesh',),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.lock_outline, size: 100, color: Colors.blue),
              const SizedBox(height: 40),
              const Text(
                "Login",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 40),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: _handleGoogleSignIn,
                icon: Image.asset(
                  'assets/google_logo.png', // Add a Google logo in assets
                  height: 24,
                ),
                label: const Text("Continue with Google"),
              ),
            ],
          ),
        ),
      ),
    );
  }
  
}