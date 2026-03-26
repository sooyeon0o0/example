// import 'package:flutter/services.dart';

void main() {
  int score = 0;

  switch (score) {
    case >= 50:
      print('50점 이상');
      break;
    default:
      print('점수 모름');
      break;
  }

  return switch(score) {
    >= 50 =>print('50점 이상'),
    _ => print('점수 모름'),
  };


  // var list = <String>[];  //string 전용 배열
  // list = []; //다이다믹 = 오브젝트(=anything)


  //           // 배열 내의 자리에 맞는 
  // var map = <String, dynamic>{
  //   'a': 'A', 
  //   'b':'B',
  // };


  // map = {
  //   'c':'C', 
  //   'd':0,
  // };
} 