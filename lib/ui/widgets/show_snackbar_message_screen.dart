import 'package:flutter/material.dart';

void showSnackbarMessageText(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
}
