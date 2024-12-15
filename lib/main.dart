import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/jokes_by_type_screen.dart';
import 'screens/random_joke_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random Jokes',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      onGenerateRoute: (settings) {
        if (settings.name == '/jokesByType') {
          final jokeType = settings.arguments as String;
          return MaterialPageRoute(
            builder: (context) => JokesByTypeScreen(jokeType: jokeType),
          );
        } else if (settings.name == '/randomJoke') {
          return MaterialPageRoute(
            builder: (context) => const RandomJokeScreen(),
          );
        }
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      },
    );
  }
}
