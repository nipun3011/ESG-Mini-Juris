import 'package:flutter/material.dart';

class LoginSignupPage extends StatefulWidget {
  const LoginSignupPage({Key? key}) : super(key: key);

  @override
  State<LoginSignupPage> createState() => _LoginSignupPageState();
}

class _LoginSignupPageState extends State<LoginSignupPage> {
  bool _isLogin = true;

  void _toggleLoginSignup() {
    setState(() {
      _isLogin = !_isLogin;
    });
  }

  Widget _buildForm() {
    return Column(
      children: [
        // ... add your form fields like username, email, password
        SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            // Implement your login/signup logic here
          },
          child: Text(
            _isLogin ? 'Login' : 'Signup',
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  _isLogin ? 'Login to your account' : 'Create new account',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(height: 16),
                _buildForm(),
                TextButton(
                  onPressed: _toggleLoginSignup,
                  child: Text(
                    _isLogin
                      ? 'Don\'t have an account? Sign up'
                      : 'Already have an account? Login',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
