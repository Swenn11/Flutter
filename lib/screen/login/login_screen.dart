import 'package:flutter/material.dart';
import 'package:my_app/screen/bottom_tabbar/bottom_tabbar_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<LoginScreen> {
  bool isChecked = false;
  bool isPasswordObscured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/login_backgound_image.png'),
          Positioned(
            top: 150,
            left: 50,
            right: 50,
            child: Column(
              children: [
                // Logo
                Image.asset('assets/logo/logo_text.png'),
                const SizedBox(height: 35),
                // Email input field
                const SizedBox(
                  width: 300,
                  child: TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Password input field
                const SizedBox(
                  width: 300,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Row for Forget password and Remember me checkbox
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Remember me checkbox (on the left side)
                    Row(
                      children: [
                        Checkbox(
                          checkColor: Colors.purple,
                          fillColor: MaterialStateProperty.resolveWith<Color>((
                            Set<MaterialState> states,
                          ) {
                            if (states.contains(MaterialState.selected)) {
                              return Colors.white;
                            }
                            return Colors.transparent;
                          }),
                          overlayColor: MaterialStateProperty.all(
                            Colors.transparent,
                          ),
                          side: const BorderSide(color: Colors.white, width: 2),
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                        const Text(
                          "Remember me",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),

                    // Forget password (on the right side)
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        'Forget password?',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white,
                          decorationThickness: 2,
                          fontSize: 14,
                          height: 1.4,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // Login Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                    splashFactory: NoSplash.splashFactory,
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.purple,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) => const BottomNavigationBarExample(),
                      ),
                    );
                  },
                  child: const Text('Login'),
                ),

                const SizedBox(height: 20),

                // Row for "Don't have an account?" and "Register Here"
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account? ",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    const SizedBox(width: 5),
                    GestureDetector(
                      onTap: () {
                        // Handle registration screen navigation
                      },
                      child: const Text(
                        "Register Here",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white,
                          decorationThickness: 2,
                          fontSize: 14,
                          height: 1.4,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
