import 'package:example/ui/pages/default_page.dart';
import 'package:example/ui/pages/todo/todo_page.dart';
import 'package:flutter/material.dart';

void main() {   // 안드로이드 (코드상)시작점 : androidmainfest.xml
                // dart의 시작점 : void main
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(  // android상 <application />
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(
          seedColor: Colors.blue,
          brightness: .light,
          ),
      ),
      home: const TodoPage(),
      // 시작점
    );
  }
}
