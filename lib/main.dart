import 'package:flutter/material.dart';
import 'package:malaccan_mobile/screens/menu.dart';

// Define custom MaterialColor for teal
MaterialColor customTeal = MaterialColor(
  const Color(0xFF00796B).value,
  <int, Color>{
    50: const Color(0xFFE0F2F1),
    100: const Color(0xFFB2DFDB),
    200: const Color(0xFF80CBC4),
    300: const Color(0xFF4DB6AC),
    400: const Color(0xFF26A69A),
    500: const Color(0xFF00796B), // Primary color (500)
    600: const Color(0xFF00796B),
    700: const Color(0xFF00695C),
    800: const Color(0xFF004D40),
    900: const Color(0xFF003B2D), // Darkest shade (900)
  },
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Malaccan Mobile',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: customTeal, // Use the custom teal color
        ).copyWith(secondary: const Color.fromARGB(255, 204, 204, 204)),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}
