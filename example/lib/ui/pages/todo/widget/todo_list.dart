import 'package:example/enum/process.dart';
import 'package:example/ui/pages/todo/widget/circle_check_box.dart';
import 'package:example/ui/pages/todo/widget/process_badge.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    // 더미 데이터 생성
    final dummy = [
      (
        title: "운동하기",
        filter: "건강",
        time: DateTime.now(),
        process: Process.doing,
      ),
      (
        title: "저녁식사",
        filter: "건강",
        time: DateTime.now(),
        process: Process.todo,
      ),
      (
        title: "대학교 수업",
        filter: "학업",
        time: DateTime.now(),
        process: Process.done,
      ),
    ];

    return ListView.separated(
      itemCount: dummy.length,
      shrinkWrap: true,
      separatorBuilder: (context, index) => SizedBox(height: 12),
      itemBuilder: (context, index) {
        final data = dummy[index];

        return Container(
          padding: .symmetric(horizontal: 18, vertical: 20),
          decoration: BoxDecoration(
            color: Colors.grey[100]!,
            borderRadius: .circular(20),
          ),
          child: Row(
            spacing: 12,
            children: [
              // 체크박스
              CircleCheckBox(value: data.process == .done),

              // 할 일 텍스트
              Expanded(
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      data.title,
                      style: const TextStyle(fontSize: 16, fontWeight: .w600),
                    ),
                    Text(
                      '${data.filter} · ${DateFormat('hh:mm').format(data.time)}',
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),

              //Process Badge
              ProcessBadge(process: data.process),
            ],
          ),
        );
      },
    );
  }
}
