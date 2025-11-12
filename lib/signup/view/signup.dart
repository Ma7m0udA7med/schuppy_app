import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            children: [
              Image.asset('assets/logo.png', height: 80),
              const SizedBox(height: 16),
              const Text(
                "Welcome to Schupply",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                "Apply for hassle free school supply",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 32),
              _signInButton("Sign up with Apple", Icons.apple),
              const SizedBox(height: 12),
              _signInButton("Sign up with Google", Icons.g_mobiledata),
              const SizedBox(height: 12),
              _signInButton("Sign up with Facebook", Icons.facebook),
              const SizedBox(height: 12),
              _signInButton("Sign up with email", Icons.email, isPrimary: true),
              const SizedBox(height: 16),
              const Text(
                "Already have an account? Log in",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _signInButton(String label, IconData icon, {bool isPrimary = false}) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: Icon(icon, color: isPrimary ? Colors.white : Colors.black),
      label: Text(label),
      style: ElevatedButton.styleFrom(
        backgroundColor: isPrimary ? const Color(0xFF1D6D4D) : Colors.white,
        foregroundColor: isPrimary ? Colors.white : Colors.black,
        minimumSize: const Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: isPrimary ? BorderSide.none : const BorderSide(color: Colors.grey),
        ),
      ),
    );
  }
}
