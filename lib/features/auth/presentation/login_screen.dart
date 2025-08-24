// lib/screens/login_screen.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart'; // Import go_router for navigation

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isPasswordVisible =
      false; // State variable to toggle password visibility

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFF162127),
      body: SafeArea(
        child: Stack(
          children: [
            // English (India) Dropdown at the top center
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.language, color: Colors.grey, size: 16),
                    SizedBox(width: 4),
                    Text(
                      'English (India)',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Icon(Icons.arrow_drop_down, color: Colors.grey),
                  ],
                ),
              ),
            ),
            // Back Arrow button at the top left
            Positioned(
              top: 16,
              left: 16,
              child: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () {
                  // You can add navigation logic here, e.g., Navigator.pop(context);
                },
              ),
            ),
            // The main login UI, centered vertically, shifted up slightly
            Align(
              alignment: const Alignment(0.0, -0.2),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ✅ Instagram Logo (from assets)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 32),
                      child: Image.asset(
                        'assets/ic_instagram_logo.png', // Your logo path
                        height: 80, // Logo scaled up slightly
                      ),
                    ),
                    // ✅ Email / Username TextField
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 8,
                      ),
                      child: TextField(
                        controller: _emailController,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Phone number, username or email',
                          hintStyle: const TextStyle(color: Colors.white54),
                          filled: true,
                          fillColor: const Color(0xFF162127),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                              color: Color(0xFF939EA4),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // ✅ Password TextField
                    Padding(
                      // Adjusted vertical padding to create more gap between fields
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 20,
                      ),
                      child: TextField(
                        controller: _passwordController,
                        // Toggle password visibility
                        obscureText: !_isPasswordVisible,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: const TextStyle(color: Colors.white54),
                          filled: true,
                          fillColor: const Color(0xFF162127),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                              color: Color(0xFF939EA4),
                            ),
                          ),
                          // Add the eye icon button
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isPasswordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.white54,
                            ),
                            onPressed: () {
                              setState(() {
                                _isPasswordVisible = !_isPasswordVisible;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    // ✅ Login Button
                    Padding(
                      // Adjusted vertical padding to create a better gap
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 24,
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          // Add login logic here
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent,
                          minimumSize: const Size(double.infinity, 44),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                        child: const Text(
                          'Log in',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    // ✅ Login with Facebook
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: GestureDetector(
                        onTap: () {
                          context.go('/feed');
                        },
                        child: const Text(
                          'Log in with Facebook',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    // ✅ Forgot Password
                    GestureDetector(
                      onTap: () {
                        context.go('/feed');
                      },
                      child: const Text(
                        'Forgot password?',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 32),
                  ],
                ),
              ),
            ),
            // "Create new account" and "Meta" sections at the very bottom
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // ✅ Create new account Button (Outlined)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Colors.blueAccent),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          minimumSize: const Size(double.infinity, 44),
                        ),
                        child: const Text(
                          'Create new account',
                          style: TextStyle(color: Colors.blueAccent),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    // ✅ Meta logo + text
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/ic_meta_logo.png',
                          height: 16,
                        ), // Add Meta logo in assets
                        const SizedBox(width: 4),
                        const Text(
                          'Meta',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
