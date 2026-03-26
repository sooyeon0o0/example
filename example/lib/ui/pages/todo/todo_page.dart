import 'package:example/ui/pages/todo/widget/fillter_row.dart';
import 'package:example/ui/pages/todo/widget/header.dart';
import 'package:example/ui/pages/todo/widget/progress_card.dart';
import 'package:flutter/material.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: .all(35),
          child: Column(
            children: [
              //타이틀 상단
              Header(),
              ProgressCard(),
              FillterRow(),
            ],
          ),
        ),
      ),
    );
  }
}
