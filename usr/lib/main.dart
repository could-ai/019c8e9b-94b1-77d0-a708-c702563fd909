import 'package:flutter/material.dart';
import 'book_screen.dart';

void main() {
  runApp(const BuddhistPeaceApp());
}

class BuddhistPeaceApp extends StatelessWidget {
  const BuddhistPeaceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Buddhist Peace Morality',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Using a color scheme inspired by Buddhist monk robes (Saffron/Maroon) and parchment
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFD35400), // Burnt Orange
          surface: const Color(0xFFFDFBF7), // Cream/Paper color
          onSurface: const Color(0xFF2C3E50), // Dark Grey for text
        ),
        useMaterial3: true,
        fontFamily: 'Serif', // Using Serif font for book-like feel
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Color(0xFF8E44AD)),
          displayMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFFD35400)),
          bodyLarge: TextStyle(fontSize: 18, height: 1.6, letterSpacing: 0.5),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const BookScreen(),
      },
    );
  }
}
