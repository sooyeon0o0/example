import 'package:flutter/material.dart';

class FillterRow extends StatelessWidget {
  const FillterRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildFilter(),
      ],
    );
  }

  Widget _buildFilter() { // 내부적 
    return Container(
      child: Text(
        '전체',
        style: TextStyle(
          fontSize: 14,
          fontWeight: .w700,
        ),
      ),
    );
  }
}