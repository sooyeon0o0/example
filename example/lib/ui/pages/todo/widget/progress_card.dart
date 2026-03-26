import 'package:flutter/material.dart';

class ProgressCard extends StatelessWidget {
  const ProgressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const .all(24), // 안에 있는 자식들
      decoration: BoxDecoration(
        color: Color(0xFF8B5CF6),
        borderRadius: .all(.circular(24)),
      ),
      child: Column(
        crossAxisAlignment: .start,    
        children: [
          DefaultTextStyle(
            style: TextStyle(
              color: Colors.white,
            ),
            child: Row( // text의 가로 영역 전체 표시
              children: [
                Text('오늘의 진행률'),
                Text('60%'),
              ],
            ),
          ), 
          Text('A'),
          Text('A'),
          Text('A'),
        ],
      ),
    );
  }
}
// DefaultTextStyle
// defau
// style: TextStyle(
//               color: Colors.white,
//             ),