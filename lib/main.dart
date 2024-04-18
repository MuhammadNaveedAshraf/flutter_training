import 'package:flutter/material.dart';
import 'package:flutter_training/screens/Registration.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const App());
}

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 91, 158, 225),
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: const RegistrationScreen(),
    );
  }
}
