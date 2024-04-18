import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<StatefulWidget> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).colorScheme.background,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'Create Account',
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Text(
                'Let\'s Create Account Together',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: Theme.of(context).colorScheme.onSurface),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                width: double.infinity,
                height: 40,
              ),
              Text(
                'Your Name',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: double.infinity,
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(30),
                      right: Radius.circular(30),
                    ),
                  ),
                  hintText: 'Enter Your Name',
                  fillColor: Theme.of(context).colorScheme.onPrimary,
                  filled: true,
                ),
              ),
              const SizedBox(
                width: double.infinity,
                height: 30,
              ),
              Text(
                'Email Address',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: double.infinity,
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(30),
                      right: Radius.circular(30),
                    ),
                  ),
                  hintText: 'Enter Your Email Address',
                  fillColor: Theme.of(context).colorScheme.onPrimary,
                  filled: true,
                ),
              ),
              const SizedBox(
                width: double.infinity,
                height: 30,
              ),
              Text(
                'Password',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: double.infinity,
                height: 10,
              ),
              TextField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(30),
                      right: Radius.circular(30),
                    ),
                  ),
                  helperStyle: TextStyle(
                      color: Theme.of(context).colorScheme.secondaryContainer),
                  hintText: 'Enter Password',
                  fillColor: Theme.of(context).colorScheme.onPrimary,
                  filled: true,
                  suffixIcon: Icon(
                    Icons.remove_red_eye_outlined,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                ),
              ),
              const SizedBox(
                width: double.infinity,
                height: 50,
              ),
              FilledButton(
                onPressed: () {},
                style: ButtonStyle(
                  padding: MaterialStateProperty.resolveWith(
                    (states) => const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 20),
                  ),
                  backgroundColor: MaterialStateColor.resolveWith(
                    (states) => Theme.of(context).colorScheme.primary,
                  ),
                ),
                child: Text(
                  'Sign In',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                width: double.infinity,
                height: 20,
              ),
              FilledButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    padding: MaterialStateProperty.resolveWith(
                      (states) => const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 20),
                    ),
                    backgroundColor: MaterialStateColor.resolveWith(
                      (states) => Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.asset(
                        height: 20,
                        width: 20,
                        'lib/images/google_icon.png',
                        fit: BoxFit.fitWidth,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        'Sign in with google',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Theme.of(context).colorScheme.onBackground,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
