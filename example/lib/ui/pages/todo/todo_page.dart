import 'package:example/ui/pages/todo/bottom_navigation/bottom_navigation.dart';
import 'package:example/ui/pages/todo/widget/filter_row.dart';
import 'package:example/ui/pages/todo/widget/header.dart';
import 'package:example/ui/pages/todo/widget/progress_card.dart';
import 'package:example/ui/pages/todo/widget/todo_list.dart';
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
            spacing: 24,
            crossAxisAlignment: .stretch,

            children: [
              //타이틀 상단
              const Header(),
              const ProgressCard(),
              const FilterRow(),
              _buildTodoTitle(),
              const TodoList(),

              // TODO: buttom navigation
              const BottomNavigation(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTodoTitle() {
    return const Text(
      '오늘 할 일',
      style: TextStyle(fontSize: 18, fontWeight: .bold, color: Colors.black),
    );
  }
}
