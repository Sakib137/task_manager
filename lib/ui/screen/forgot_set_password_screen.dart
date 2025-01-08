import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/ui/screen/forgot_otp_screen.dart';
import 'package:task_manager/ui/screen/sign_in_screen.dart';
import 'package:task_manager/ui/utills/app_colour.dart';
import 'package:task_manager/ui/widgets/screen_background.dart';

class ForgotSetPasswordScreen extends StatefulWidget {
  const ForgotSetPasswordScreen({super.key});

  static const String name = '/forgot_set_password';

  @override
  State<ForgotSetPasswordScreen> createState() => _ForgotSetPasswordScreen();
}

class _ForgotSetPasswordScreen extends State<ForgotSetPasswordScreen> {
  final TextEditingController _newPasswordTEcontroller =
      TextEditingController();
  final TextEditingController _confirmPasswordTEcontroller =
      TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: ScreenBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Form(
              key: _formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Text("Set Password", style: textTheme.titleLarge),
                  Text(
                    "Minumum length password 8 character with letter and number combination",
                    style: textTheme.titleSmall,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  TextFormField(
                    controller: _newPasswordTEcontroller,
                    decoration: const InputDecoration(
                      labelText: "New Password",
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  TextFormField(
                    controller: _confirmPasswordTEcontroller,
                    decoration: const InputDecoration(
                      labelText: "Confirm Password",
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Confirm'),
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  Center(
                    child: Column(
                      children: [
                        _buildSignInSection(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSignInSection() {
    return RichText(
      text: TextSpan(
          text: "Have an account? ",
          style: const TextStyle(
              color: Colors.black54, fontWeight: FontWeight.w300),
          children: [
            TextSpan(
                text: "Sign In",
                style: const TextStyle(
                  color: AppColour.themeColor,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.pushNamed(context, SignInScreen.name);
                  }),
          ]),
    );
  }

  @override
  void dispose() {
    _newPasswordTEcontroller.dispose();
    _confirmPasswordTEcontroller.dispose();
    super.dispose();
  }
}
