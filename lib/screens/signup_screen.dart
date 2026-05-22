import 'package:flutter/material.dart';
import 'home_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Signup Screen")),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),

            const Center(
              child: Text(
                "Create Account 🚀",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 10),

            const Center(
              child: Text(
                "Signup to continue",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),

            const SizedBox(height: 40),

            TextField(
              decoration: InputDecoration(
                labelText: "Full Name",
                hintText: "Enter your full name",

                prefixIcon: const Icon(Icons.person),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            const SizedBox(height: 20),

            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "Enter your email",

                prefixIcon: const Icon(Icons.email),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            const SizedBox(height: 20),

            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Create password",

                prefixIcon: const Icon(Icons.lock),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            const SizedBox(height: 20),

            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Confirm Password",
                hintText: "Re-enter password",

                prefixIcon: const Icon(Icons.lock_outline),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,

              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },

                child: const Text("Create Account"),
              ),
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account? "),

                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },

                  child: const Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
