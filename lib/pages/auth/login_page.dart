// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:plantify/app/app_constants.dart';
import 'package:plantify/router/app_router.dart';
import 'package:plantify/shared/extensions/build_context.dart';
import 'package:plantify/shared/widgets/animated_button.dart';
import 'package:plantify/shared/widgets/jbox.dart';
import 'package:plantify/shared/widgets/my_rounded_button.dart';
import 'package:plantify/shared/widgets/my_text_field.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  ImagePath.signin,
                  height: context.sizeHeight * .35,
                ),
              ),
              Text(
                'Sign In',
                style: context.textTheme.titleLarge,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: MyTextField(
                  label: 'Enter Email',
                  onChanged: (p0) {},
                  prefixIcon: Icon(Icons.alternate_email_rounded),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: MyTextField(
                  obscureText: true,
                  label: 'Enter Password',
                  onChanged: (p0) {},
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: AnimatedButton(
                  onTap: () {},
                  child: MyRoundedButton(
                    label: "Sign in",
                    color: context.primary,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Forgot passworg?',
                    style: context.textTheme.bodyMedium,
                  ),
                  JBox(width: 10),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Reset here',
                      style: context.textTheme.bodyMedium?.copyWith(color: context.primary),
                    ),
                  )
                ],
              ),
              JBox(height: 20),
              Stack(
                alignment: Alignment.center,
                children: [
                  Divider(color: context.primary.withOpacity(.1), thickness: 2),
                  Text('OR'),
                ],
              ),
              JBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: AnimatedButton(
                  onTap: () {},
                  child: MyRoundedButton(
                    label: "Sign in with Google",
                    withBorder: true,
                    child: Image.asset(
                      ImagePath.google,
                      height: 35,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'New to Plantify??',
                      style: context.textTheme.bodyMedium,
                    ),
                    JBox(width: 10),
                    InkWell(
                      onTap: () {
                        context.goNamed(Routes.signup.name);
                      },
                      child: Text(
                        'Register',
                        style: context.textTheme.bodyMedium?.copyWith(color: context.primary),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
