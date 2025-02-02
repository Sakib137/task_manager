import 'package:flutter/material.dart';
import 'package:task_manager/ui/screen/add_new_task_screen.dart';
import 'package:task_manager/ui/screen/forgot_email_screen.dart';
import 'package:task_manager/ui/screen/forgot_otp_screen.dart';
import 'package:task_manager/ui/screen/forgot_set_password_screen.dart';
import 'package:task_manager/ui/screen/main_bottom_nav_screen.dart';
import 'package:task_manager/ui/screen/sign_up_screen.dart';
import 'package:task_manager/ui/screen/splash_screen.dart';
import 'package:task_manager/ui/screen/sign_in_screen.dart';
import 'package:task_manager/ui/screen/update_profile_screen.dart';
import 'package:task_manager/ui/utills/app_colour.dart';

class TaskManagerApp extends StatelessWidget {
  const TaskManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
          titleSmall:
              TextStyle(color: Colors.black54, fontWeight: FontWeight.w400),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          hintStyle: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w100,
          ),
          contentPadding: EdgeInsets.all(16),
          border: OutlineInputBorder(borderSide: BorderSide.none),
          enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColour.themeColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            fixedSize: const Size.fromWidth(double.maxFinite),
            padding: const EdgeInsets.all(8),
            foregroundColor: Colors.white,
          ),
        ),
      ),
      onGenerateRoute: (RouteSettings settings) {
        late Widget widget;
        if (settings.name == SplashScreen.name) {
          widget = const SplashScreen();
        } else if (settings.name == SignInScreen.name) {
          widget = const SignInScreen();
        } else if (settings.name == SignUpScreen.name) {
          widget = const SignUpScreen();
        } else if (settings.name == ForgotEmailScreen.name) {
          widget = const ForgotEmailScreen();
        } else if (settings.name == ForgotOtpScreen.name) {
          widget = const ForgotOtpScreen();
        } else if (settings.name == ForgotSetPasswordScreen.name) {
          widget = const ForgotSetPasswordScreen();
        } else if (settings.name == MainBottomNavScreen.name) {
          widget = const MainBottomNavScreen();
        } else if (settings.name == AddNewTaskScreen.name) {
          widget = const AddNewTaskScreen();
        } else if (settings.name == UpdateProfileScreen.name) {
          widget = const UpdateProfileScreen();
        }
        return MaterialPageRoute(
          builder: (_) => widget,
        );
      },
    );
  }
}
