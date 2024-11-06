import 'package:flutter/material.dart';
import 'screens/home_screen.dart';  // We'll create this screen for the main UI

void main() {
  runApp(MyPortfolioApp());
}

class MyPortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: ThemeData.light().textTheme.copyWith(
          headlineSmall: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
          bodySmall: TextStyle(fontFamily: 'Poppins', fontSize: 16),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
