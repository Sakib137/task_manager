import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task_manager/ui/screen/forgot_set_password_screen.dart';
import 'package:task_manager/ui/screen/sign_in_screen.dart';
import 'package:task_manager/ui/utills/app_colour.dart';
import 'package:task_manager/ui/widgets/screen_background.dart';

class ForgotOtpScreen extends StatefulWidget {
  const ForgotOtpScreen({super.key});

  static const String name = '/forgot_otp';

  @override
  State<ForgotOtpScreen> createState() => _ForgotOtpScreen();
}

class _ForgotOtpScreen extends State<ForgotOtpScreen> {
  final TextEditingController _otpTEcontroller = TextEditingController();
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
                  Text("PIN Verification", style: textTheme.titleLarge),
                  Text(
                    "A six digit verification pin has been sent to your email address",
                    style: textTheme.titleSmall,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  _buildPinCodeTextField(context),
                  const SizedBox(
                    height: 24,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, ForgotSetPasswordScreen.name);
                      },
                      child: const Text("Verify")),
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

  Widget _buildPinCodeTextField(BuildContext context) {
    return PinCodeTextField(
      keyboardType: TextInputType.number,
      length: 6,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(5),
        fieldHeight: 50,
        fieldWidth: 40,
        activeFillColor: Colors.white,
        inactiveFillColor: Colors.white,
      ),
      animationDuration: const Duration(milliseconds: 300),
      backgroundColor: const Color.fromARGB(255, 233, 239, 243),
      enableActiveFill: true,
      controller: _otpTEcontroller,
      appContext: context,
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
    _otpTEcontroller.dispose();
    super.dispose();
  }
}
