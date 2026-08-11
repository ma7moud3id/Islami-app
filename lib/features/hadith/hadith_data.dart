import 'hadith_loader.dart';
import 'hadith_model.dart';

Future<List<Hadith>> loadAllHadiths() async {
  List<Hadith> hadiths = [];

  for (int i = 1; i <= 50; i++) {
    try {
      final hadith = await loadHadith(i);
      hadiths.add(hadith);
    } catch (e) {
      print("خطأ في تحميل ملف الحديث رقم $i: $e");
    }
  }
  return hadiths;
}