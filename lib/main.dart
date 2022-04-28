import 'package:flutter/material.dart';
import 'package:flutter_codigo5_components/pages/practice1_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Components App',
      home:Practice1Page(),
    );
  }
}
