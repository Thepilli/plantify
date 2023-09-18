import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:plantify/pages/auth/login_page.dart';
import 'package:plantify/pages/auth/signup_page.dart';
import 'package:plantify/pages/root_page/home_page/home_page.dart';
import 'package:plantify/pages/root_page/root_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

enum Routes { onboarding, root, detail, home, login, signup }

final _rootNavigatorKey = GlobalKey<NavigatorState>();

@Riverpod(keepAlive: true)
GoRouter goRouter(GoRouterRef ref) {
  return GoRouter(
    initialLocation: '/root',
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: false,
    routes: [
      GoRoute(
        path: '/login',
        name: Routes.login.name,
        builder: (context, state) => LoginPage(
          key: state.pageKey,
        ),
      ),
      GoRoute(
        path: '/',
        name: Routes.signup.name,
        builder: (context, state) => SignupPage(
          key: state.pageKey,
        ),
      ),
      GoRoute(
        path: '/root',
        name: Routes.root.name,
        builder: (context, state) => RootPage(
          key: state.pageKey,
        ),
      ),
      GoRoute(
        path: '/home',
        name: Routes.home.name,
        builder: (context, state) => HomePage(
          key: state.pageKey,
        ),
      ),
    ],
  );
}
