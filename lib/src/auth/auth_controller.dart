import 'package:flutter/material.dart';
import 'package:spectrofy/src/auth/auth_service.dart';

class AuthController with ChangeNotifier {
  final AuthService authService;

  AuthController(this.authService);
}
