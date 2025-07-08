import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isPasswordVisible = false;
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Login',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'SakkalMajalla',
            fontSize: 46,
          ),
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: Image.asset('assets/imgs/bg_login.jpg', fit: BoxFit.cover),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 24),
                Text(
                  'By signing in you are agreeing',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontFamily: 'SakkalMajalla',
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'our ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontFamily: 'SakkalMajalla',
                      ),
                    ),
                    Text(
                      'Term and privacy policy',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 28,
                        fontFamily: 'SakkalMajalla',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Container(
                  padding: const EdgeInsets.all(26),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          label: const Text('Email Address'),
                          labelStyle: TextStyle(
                            fontFamily: 'SakkalMajalla',
                            fontSize: 24,
                          ),
                        ),
                      ),
                      SizedBox(height: 24),
                      TextField(
                        obscureText: !_isPasswordVisible,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          label: const Text('Password'),
                          labelStyle: TextStyle(
                            fontFamily: 'SakkalMajalla',
                            fontSize: 24,
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isPasswordVisible
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                            onPressed: () {
                              setState(() {
                                _isPasswordVisible = !_isPasswordVisible;
                              });
                            },
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Widget untuk "Remember Me"
                          Row(
                            children: [
                              Checkbox(
                                value: _rememberMe,
                                onChanged: (value) {
                                  setState(() {
                                    _rememberMe = value!;
                                  });
                                },
                                // Ubah warna checkbox agar terlihat
                                checkColor: Colors.white,
                                activeColor: Colors.blueAccent,
                                side: const BorderSide(color: Colors.black),
                              ),
                              const Text(
                                'Remember Me',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                          // Widget untuk "Forgot Password"
                          TextButton(
                            onPressed: () {
                              // Tambahkan logika untuk lupa password di sini
                            },
                            child: const Text(
                              'Forgot Password?',
                              style: TextStyle(color: Colors.blueAccent),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // Tombol Login
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              backgroundColor: Colors.blueAccent,
                              foregroundColor: Colors.white,
                              elevation: 0,
                              // TAMBAHKAN PADDING DI SINI
                              padding: const EdgeInsets.symmetric(
                                horizontal: 50,
                                vertical: 12,
                              ),
                            ),
                            onPressed: () {},
                            child: const Text('Login'),
                          ),
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              foregroundColor: Colors.blueAccent,
                              side: const BorderSide(
                                color: Colors.blueAccent,
                                width: 2,
                              ),
                              // TAMBAHKAN PADDING DI SINI
                              padding: const EdgeInsets.symmetric(
                                horizontal: 50,
                                vertical: 12,
                              ),
                            ),
                            onPressed: () {
                              // Logika untuk kembali
                            },
                            child: const Text('Back'),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don't have an account?",

                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'SakkalMajalla',
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Register',
                              style: TextStyle(
                                fontFamily: 'SakkalMajalla',
                                color: Colors.blueAccent,
                                fontSize: 20,
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
          ),
        ],
      ),
    );
  }
}
