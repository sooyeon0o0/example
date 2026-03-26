import 'package:flutter/material.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 4,
      shrinkWrap: true,
      separatorBuilder: (context, index) => SizedBox(height: 12),
      itemBuilder: (context, index) {
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
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  shape: .circle,
                  color: Colors.grey[300],
                  border: .all(color: Colors.grey),
                ),
              ),

              // 할 일 텍스트
              Container(
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      '운동 $index분',
                      style: const TextStyle(fontSize: 16, fontWeight: .w600),
                    ),
                    Text(
                      '건강 · 오후 00:0$index',
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),

              // TODO: 예정중, 뭐시기 만들기
            ],
          ),
        );
      },
    );
  }
}
