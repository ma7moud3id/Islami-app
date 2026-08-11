import 'package:flutter/services.dart';
import 'hadith_model.dart';

Future<Hadith> loadHadith(int number) async {
  final data =
      await rootBundle.loadString('assets/hadith/h$number.txt');

  final lines = data.split('\n');

  String title = '';
  String content = '';

  if (lines.isNotEmpty) {
    title = lines.first.trim();
    content = lines.skip(1).join('\n').trim();
  }
  return Hadith(
    number: number,
    title: title,
    content: content,
  );
}