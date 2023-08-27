import 'package:flutter/material.dart';

class PilemSnackbar extends SnackBar {
  final String message;
  final bool isError;
  PilemSnackbar(this.message, {Key? key, this.isError = false, super.action})
      : super(
          key: key,
          content: Text(message),
          backgroundColor: isError ? Colors.redAccent : null,
          behavior: SnackBarBehavior.floating,
        );
}
