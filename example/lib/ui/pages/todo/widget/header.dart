import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        // 타이틀
        const Column(
          crossAxisAlignment: .start, //좌측정렬
          children: [
            Text(
              '안녕하세요', 
              style: TextStyle(color: Color(0xFF71717A)), // FF : 불투명한
            ),
            Text(
              '나의 할 일',
              style: TextStyle(fontWeight: .bold, fontSize: 30),
            ),
          ],
        ),
       
        // 알람 아이콘
        Container(
          padding: .all(9), // 사방
          decoration: BoxDecoration(
            color: Colors.grey[300],
            shape: .circle,
          ),
          child: const Icon(
            Icons.notifications_outlined, 
            size: 32,
          ),
        ),
      ],
    );
  }
}
