import 'package:chatsy/navigation_routes.dart';
import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';

void main() => runApp(const ChatsyApp());

class ChatsyApp extends StatelessWidget {
  const ChatsyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.black87),
        ),
      ),
      initialRoute: WelcomeScreen.route,
      routes: getRoutes(),
    );
  }
}
