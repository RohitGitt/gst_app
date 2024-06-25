import 'package:flutter/material.dart';

void showCustomSnackBar({ required BuildContext context, required String message , int? durationInSeconds }) {
  final snackBar = SnackBar(
    content: Text(message),
    duration: Duration(seconds: durationInSeconds ?? 2),
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}