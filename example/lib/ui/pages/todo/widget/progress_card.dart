import 'package:flutter/material.dart';

class ProgressCard extends StatelessWidget {
  const ProgressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const .all(24),
      decoration: BoxDecoration(
        color: Color(0xFF8B5CF6),
        borderRadius: .all(.circular(24)),
      ),
      child: Column(
        spacing: 15, // 요소 사이 간격 넓히기
        crossAxisAlignment: .start,
        children: [
          DefaultTextStyle(
            style: TextStyle(
              // 텍스트 기본 스타일
              color: Colors.white,
            ),
            child: Row(
              // text의 가로 영역 전체 표시
              mainAxisAlignment: .spaceBetween,

              children: [
                Text(
                  '오늘의 진행률',
                  style: TextStyle(fontWeight: .w700, fontSize: 16),
                ),
                Text('60%', style: TextStyle(fontWeight: .bold, fontSize: 30)),
              ],
            ),
          ),
          // Progress표시
          SizedBox(
            height: 8,
            child: LinearProgressIndicator(
              value: 0.6, // 60%
              backgroundColor: Colors.white.withValues(
                alpha: 0.2,
              ), //withValues -> 투명도
              color: Colors.white,
              borderRadius: .circular(10),
            ),
          ),
          Text(
            '10개 중 6개 완료',
            style: TextStyle(color: Colors.white.withValues(alpha: 0.6)),
          ),
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