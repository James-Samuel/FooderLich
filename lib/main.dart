import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';
import 'home.dart';

void main() {
  runApp(const Fooderlich());
}

class Fooderlich extends StatefulWidget {
  const Fooderlich({super.key});
  
  @override
  State<Fooderlich> createState() => _FooderlichState();
  // _FooderlichState createState() {
  //   return _FooderlichState();
  // }
}

class _FooderlichState extends State<Fooderlich> {
  @override
  Widget build(BuildContext context) {
// 2
    final theme = FooderlichTheme.dark();
    // TODO: Apply Home widget
    return MaterialApp(
      debugShowCheckedModeBanner: false, //removes the banner
      theme: theme,
      title: 'Fooderlich',
      home: const Home(),
    );
  }
}
