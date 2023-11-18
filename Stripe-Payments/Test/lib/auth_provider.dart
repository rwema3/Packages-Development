import 'package:flutter/material.dart';
import 'auth_service.dart';

class AuthProvider extends InheritedWidget {
  final AuthService auth;

  AuthProvider({
    Key? key,
    required Widget child,
  })  : auth = AuthService(),
        super(key: key, child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }

  static AuthProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AuthProvider>();
  }
}
