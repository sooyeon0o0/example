import 'package:flutter/material.dart';

enum Process { todo, doing, done }

extension ProcessExtension on Process {
  // 1번째 방식 (if문)
  // Color get secondaryColor {
  //   if (this == .todo) {
  //     return Color(0x208B5cf6);
  //   } else if (this == .doing) {
  //     return Color(0x2014B8A6);
  //   }
  //   return Color(0x20F472B6);
  // }

  // 람다 형식
  // Color get secondaryColor {
  //   return this == .done
  //       ? const Color(0x20F472B6)
  //       : this == .doing
  //       ? const Color(0x2014B8A6)
  //       : const Color(0x208B5cf6);
  // }

  // 배경색
  Color get secondaryColor => switch (this) {
    .todo => const Color(0x20F472B6),
    .doing => const Color(0x2014B8A6),
    .done => const Color(0x208B5cf6),
  };

  // 글자색
  Color get primaryColor => switch (this) {
    .todo => const Color(0xFFF472B6),
    .doing => const Color(0xFF14B8A6),
    .done => const Color(0xFF8B5cf6),
  };

  String get title => switch (this) {
    .todo => '예정',
    .doing => '진행중',
    .done => '완료',
  };
}
