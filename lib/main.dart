import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'core/Calculator.dart';

void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter calculator',
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      home: calculator(),
    );
  }
}
