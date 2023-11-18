import 'package:flutter/material.dart';
import 'auth_service.dart';

class AuthProvider extends InheritedWidget {
  final AuthService auth;

  AuthProvider({
    Key? key,
    required Widget child,
  })  : auth = AuthService(),
        super(key: key, child: child);

 