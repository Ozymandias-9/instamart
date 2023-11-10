import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'src/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.interTextTheme(),
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromRGBO(178, 191, 75, 1),
            primary: const Color.fromRGBO(178, 191, 75, 1),
            secondary: const Color.fromRGBO(244, 191, 35, 1),
            onPrimary: const Color.fromRGBO(201, 209, 124, 1),
            onSecondary: const Color.fromRGBO(247, 207, 112, 1),
            primaryContainer: const Color.fromRGBO(231, 234, 197, 1),
            secondaryContainer: const Color.fromRGBO(251, 235, 189, 1),
        ),
        useMaterial3: true,
      ),
      initialRoute: Routes.initialRoute,
      routes: Routes.generateRoutes,
    );
  }
}