import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

void showErrorBar(BuildContext context, String message) {
  Flushbar(
    flushbarPosition: FlushbarPosition.TOP,
    flushbarStyle: FlushbarStyle.FLOATING,
    backgroundColor: Colors.red[700]!,
    margin: const EdgeInsets.all(12),
    borderRadius: BorderRadius.circular(8),
    icon: const Icon(Icons.error_outline, color: Colors.white),
    titleText: const Text(
      'Error',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
        color: Colors.white,
      ),
    ),
    messageText: Text(
      message,
      style: const TextStyle(fontSize: 14, color: Colors.white70),
    ),
    isDismissible: true,
    duration: const Duration(seconds: 4),
  ).show(context);
}