//stateless -> 변경X / stateful -> 변경O
import 'package:flutter/material.dart';

class DefaultPage extends StatelessWidget {
  const DefaultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( // 앱 바, 바텀 앱 바, fab가 포함된 화면을 만들 때 사용
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text('예제 화면'),
      ),
      body: Row(
        children: [
          Expanded(child: Container(color: Colors.red)),
          Expanded(child: Container(color: Colors.blue)),
          Expanded(child: Container(color: Colors.green)),
        ],
      )
    );
  }
}