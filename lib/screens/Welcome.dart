import 'package:flutter/material.dart';
import 'package:grab_go/screens/routes.dart';
import 'package:grab_go/screens/signin_screen.dart';
import 'package:grab_go/screens/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Grab n Go",
          style: TextStyle(
            fontFamily: "Suwannaphum",
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
        
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                   "assets/car.jpg",
                    width: 100,
                    height: 100,
                  ),
    
                   const SizedBox(width: 20),
                  Image.network(
                    "https://picsum.photos/200", 
                    width: 100,
                    height: 100,
                  ),
                ],
              ),
              const SizedBox(height: 40),

           
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    createFadeRoute(const SignUpScreen()), 
                  );
                },
                child: const Text("Sign Up"),
              ),

              const SizedBox(height: 15),

              ElevatedButton(
                onPressed: () {
                    Navigator.push(
                      context,
                      createFadeRoute(const SignInScreen()),
                  );
                },
                child: const Text("Sign In"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
