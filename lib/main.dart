import 'package:fl_designs/screens/basic_design.dart';
import 'package:fl_designs/screens/home_screen.dart';
import 'package:fl_designs/screens/scroll_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: '/home_screen',
      theme: ThemeData.dark(),
      routes: {
        '/basic_design': (_) => const BasicDesignsScreen(),
        '/scroll_screen': (_) => const ScrollScreen(),
        '/home_screen': (_) => const HomeScreen(),
      },
    );
  }
}
