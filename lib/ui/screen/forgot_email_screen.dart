import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/ui/screen/sign_in_screen.dart';
import 'package:task_manager/ui/utills/app_colour.dart';
import 'package:task_manager/ui/widgets/screen_background.dart';

class ForgotEmailScreen extends StatefulWidget {
  const ForgotEmailScreen({super.key});

  static const String name = '/forgot_email';

  @override
  State<ForgotEmailScreen> createState() => _ForgotEmailScreen();
}

class _ForgotEmailScreen extends State<ForgotEmailScreen> {
  final TextEditingController _emailTEcontroller = TextEditingController();
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
                  Text("Your Email Address", style: textTheme.titleLarge),
                  const Text(
                    "A six digit verification pin will send to your email address",
                    style: TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  TextFormField(
                    controller: _emailTEcontroller,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      hintText: "Email",
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Icon(Icons.arrow_forward_rounded),
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
              color: Colors.black54, fontWeight: FontWeight.w100),
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
    _emailTEcontroller.dispose();
    super.dispose();
  }
}
