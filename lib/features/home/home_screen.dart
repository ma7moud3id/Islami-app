import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../hadith/hadith_screen.dart';

class AppAssets {
  
  static const String background =
      'assets/images/home/home_background.png';
  
  static const String recentSuraDecoration =
    'assets/images/home/recent_sura_decoration.png';

  
  static const String suraNumberBadge =
      'assets/images/icons/sura_number_badge.png';

  static const String suraDetailsBackground =
      'assets/images/quran/sura_details_background.png';

  static const String quran =
    'assets/images/icons/quran.png';
  static const String hadith =
      'assets/images/icons/hadith.png';
  static const String tasbeeh =
      'assets/images/icons/tasbeeh.png';
  static const String radio =
      'assets/images/icons/radio.png';
  static const String time =
      'assets/images/icons/time.png';
}

const Color gold = Color(0xFFE2BE7F);
const Color dark = Color(0xFF202020);

class Sura {
  final int number;
  final String englishName;
  final String arabicName;
  final int verses;

  const Sura({
    required this.number,
    required this.englishName,
    required this.arabicName,
    required this.verses,
  });
}

const List<List<dynamic>> suraData = [
  ['Al-Fatiha', 'الفاتحة', 7],
  ['Al-Baqarah', 'البقرة', 286],
  ['Aal-E-Imran', 'آل عمران', 200],
  ['An-Nisa', 'النساء', 176],
  ['Al-Maida', 'المائدة', 120],
  ['Al-Anam', 'الأنعام', 165],
  ['Al-Araf', 'الأعراف', 206],
  ['Al-Anfal', 'الأنفال', 75],
  ['At-Tawbah', 'التوبة', 129],
  ['Yunus', 'يونس', 109],
  ['Hud', 'هود', 123],
  ['Yusuf', 'يوسف', 111],
  ['Ar-Rad', 'الرعد', 43],
  ['Ibrahim', 'إبراهيم', 52],
  ['Al-Hijr', 'الحجر', 99],
  ['An-Nahl', 'النحل', 128],
  ['Al-Isra', 'الإسراء', 111],
  ['Al-Kahf', 'الكهف', 110],
  ['Maryam', 'مريم', 98],
  ['Taha', 'طه', 135],
  ['Al-Anbiya', 'الأنبياء', 112],
  ['Al-Hajj', 'الحج', 78],
  ['Al-Muminun', 'المؤمنون', 118],
  ['An-Nur', 'النور', 64],
  ['Al-Furqan', 'الفرقان', 77],
  ['Ash-Shuara', 'الشعراء', 227],
  ['An-Naml', 'النمل', 93],
  ['Al-Qasas', 'القصص', 88],
  ['Al-Ankabut', 'العنكبوت', 69],
  ['Ar-Rum', 'الروم', 60],
  ['Luqman', 'لقمان', 34],
  ['As-Sajdah', 'السجدة', 30],
  ['Al-Ahzab', 'الأحزاب', 73],
  ['Saba', 'سبأ', 54],
  ['Fatir', 'فاطر', 45],
  ['Ya-Sin', 'يس', 83],
  ['As-Saffat', 'الصافات', 182],
  ['Sad', 'ص', 88],
  ['Az-Zumar', 'الزمر', 75],
  ['Ghafir', 'غافر', 85],
  ['Fussilat', 'فصلت', 54],
  ['Ash-Shura', 'الشورى', 53],
  ['Az-Zukhruf', 'الزخرف', 89],
  ['Ad-Dukhan', 'الدخان', 59],
  ['Al-Jathiyah', 'الجاثية', 37],
  ['Al-Ahqaf', 'الأحقاف', 35],
  ['Muhammad', 'محمد', 38],
  ['Al-Fath', 'الفتح', 29],
  ['Al-Hujurat', 'الحجرات', 18],
  ['Qaf', 'ق', 45],
  ['Adh-Dhariyat', 'الذاريات', 60],
  ['At-Tur', 'الطور', 49],
  ['An-Najm', 'النجم', 62],
  ['Al-Qamar', 'القمر', 55],
  ['Ar-Rahman', 'الرحمن', 78],
  ['Al-Waqiah', 'الواقعة', 96],
  ['Al-Hadid', 'الحديد', 29],
  ['Al-Mujadila', 'المجادلة', 22],
  ['Al-Hashr', 'الحشر', 24],
  ['Al-Mumtahanah', 'الممتحنة', 13],
  ['As-Saff', 'الصف', 14],
  ['Al-Jumuah', 'الجمعة', 11],
  ['Al-Munafiqun', 'المنافقون', 11],
  ['At-Taghabun', 'التغابن', 18],
  ['At-Talaq', 'الطلاق', 12],
  ['At-Tahrim', 'التحريم', 12],
  ['Al-Mulk', 'الملك', 30],
  ['Al-Qalam', 'القلم', 52],
  ['Al-Haqqah', 'الحاقة', 52],
  ['Al-Maarij', 'المعارج', 44],
  ['Nuh', 'نوح', 28],
  ['Al-Jinn', 'الجن', 28],
  ['Al-Muzzammil', 'المزمل', 20],
  ['Al-Muddaththir', 'المدثر', 56],
  ['Al-Qiyamah', 'القيامة', 40],
  ['Al-Insan', 'الإنسان', 31],
  ['Al-Mursalat', 'المرسلات', 50],
  ['An-Naba', 'النبأ', 40],
  ['An-Naziat', 'النازعات', 46],
  ['Abasa', 'عبس', 42],
  ['At-Takwir', 'التكوير', 29],
  ['Al-Infitar', 'الانفطار', 19],
  ['Al-Mutaffifin', 'المطففين', 36],
  ['Al-Inshiqaq', 'الانشقاق', 25],
  ['Al-Buruj', 'البروج', 22],
  ['At-Tariq', 'الطارق', 17],
  ['Al-Ala', 'الأعلى', 19],
  ['Al-Ghashiyah', 'الغاشية', 26],
  ['Al-Fajr', 'الفجر', 30],
  ['Al-Balad', 'البلد', 20],
  ['Ash-Shams', 'الشمس', 15],
  ['Al-Layl', 'الليل', 21],
  ['Ad-Duha', 'الضحى', 11],
  ['Ash-Sharh', 'الشرح', 8],
  ['At-Tin', 'التين', 8],
  ['Al-Alaq', 'العلق', 19],
  ['Al-Qadr', 'القدر', 5],
  ['Al-Bayyinah', 'البينة', 8],
  ['Az-Zalzalah', 'الزلزلة', 8],
  ['Al-Adiyat', 'العاديات', 11],
  ['Al-Qariah', 'القارعة', 11],
  ['At-Takathur', 'التكاثر', 8],
  ['Al-Asr', 'العصر', 3],
  ['Al-Humazah', 'الهمزة', 9],
  ['Al-Fil', 'الفيل', 5],
  ['Quraysh', 'قريش', 4],
  ['Al-Maun', 'الماعون', 7],
  ['Al-Kawthar', 'الكوثر', 3],
  ['Al-Kafirun', 'الكافرون', 6],
  ['An-Nasr', 'النصر', 3],
  ['Al-Masad', 'المسد', 5],
  ['Al-Ikhlas', 'الإخلاص', 4],
  ['Al-Falaq', 'الفلق', 5],
  ['An-Nas', 'الناس', 6],
];

final List<Sura> allSuras = List.generate(
  suraData.length,
  (index) => Sura(
    number: index + 1,
    englishName: suraData[index][0] as String,
    arabicName: suraData[index][1] as String,
    verses: suraData[index][2] as int,
  ),
);

Future<List<String>> loadSura(int suraNumber) async {
  final suraPath = await rootBundle.loadString('assets/suras/$suraNumber.txt');
  return suraPath.split('\n');
}

String normalizeText(String text) {
  return text
      .trim()
      .toLowerCase()
      .replaceAll(RegExp(r'[\u064B-\u065F\u0670]'), '')
      .replaceAll('أ', 'ا')
      .replaceAll('إ', 'ا')
      .replaceAll('آ', 'ا')
      .replaceAll('ؤ', 'و')
      .replaceAll('ئ', 'ي')
      .replaceAll('ى', 'ي')
      .replaceAll('ة', 'ه');
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Sura> recentlyRead = [
    allSuras[20],
    allSuras[0],
  ];

  void addToRecentlyRead(Sura sura) {
    setState(() {
      recentlyRead.removeWhere((item) => item.number == sura.number);
      recentlyRead.insert(0, sura);

      if (recentlyRead.length > 2) {
        recentlyRead.removeLast();
      }
    });
  }

  Future<void> openSura(Sura sura) async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => SuraDetailsScreen(sura: sura),
      ),
    );

    addToRecentlyRead(sura);
  }

  Future<void> openSearch() async {
    final selectedSura = await Navigator.push<Sura>(
      context,
      MaterialPageRoute(
        builder: (_) => const QuranSearchScreen(),
      ),
    );

    if (selectedSura != null) {
      addToRecentlyRead(selectedSura);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dark,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              AppAssets.background,
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(.25),
              colorBlendMode: BlendMode.darken,
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                
                const SizedBox(height: 185),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: InkWell(
                    onTap: openSearch,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 54,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(.25),
                        border: Border.all(color: gold),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:  Row(
                        children: [
                          ColorFiltered(colorFilter: const ColorFilter.mode(gold, BlendMode.srcIn),
                            child:  Image.asset(
                              AppAssets.quran,
                              width: 24,
                              height: 24,
                            ),
                          ),
                          SizedBox(width: 12),
                          Text(
                            'Sura Name',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 18),

                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    children: [
                      const Text(
                        'Most Recently',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 10),

                      SizedBox(
                        height: 150,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: recentlyRead.length,
                          separatorBuilder: (_, __) =>
                              const SizedBox(width: 10),
                          itemBuilder: (_, index) {
                            return SizedBox(
                              width: 250,
                              child: RecentCard(
                                sura: recentlyRead[index],
                                onTap: () => openSura(recentlyRead[index]),
                              ),
                            );
                          },
                        ),
                      ),

                      const SizedBox(height: 18),

                      const Text(
                        'Suras List',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),

                      ...allSuras.map(
                        (sura) => SuraListItem(
                          sura: sura,
                          onTap: () => openSura(sura),
                        ),
                      ),
                    ],
                  ),
                ),

                const QuranBottomBar(selectedIndex: 0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class QuranSearchScreen extends StatefulWidget {
  const QuranSearchScreen({super.key});

  @override
  State<QuranSearchScreen> createState() => _QuranSearchScreenState();
}

class _QuranSearchScreenState extends State<QuranSearchScreen> {
  String searchText = '';

  @override
  Widget build(BuildContext context) {
    final query = normalizeText(searchText);

    final filteredSuras = allSuras.where((sura) {
      return normalizeText(sura.englishName).contains(query) ||
          normalizeText(sura.arabicName).contains(query) ||
          '${sura.number}'.contains(query);
    }).toList();

    return Scaffold(
      backgroundColor: dark,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              AppAssets.background,
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(.42),
              colorBlendMode: BlendMode.darken,
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 185),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: TextField(
                            autofocus: true,
                            keyboardType: TextInputType.text,
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            onChanged: (value) {
                              setState(() {
                                searchText = value;
                             });
                            },
                          style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                           ),
                    decoration: InputDecoration(
                      hintText: 'ابحث باسم السورة',
                      hintStyle: const TextStyle(color: Colors.white70),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: gold,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: gold),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: gold,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 12),

                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    itemCount: filteredSuras.length,
                    itemBuilder: (_, index) {
                      final sura = filteredSuras[index];

                      return SuraListItem(
                        sura: sura,
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) =>
                                  SuraDetailsScreen(sura: sura),
                            ),
                          );

                          if (mounted) {
                            Navigator.pop(context, sura);
                          }
                        },
                      );
                    },
                  ),
                ),

                QuranBottomBar(
                  selectedIndex: 0,
                  onQuranTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RecentCard extends StatelessWidget {
  final Sura sura;
  final VoidCallback onTap;

  const RecentCard({
    super.key,
    required this.sura,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        decoration: BoxDecoration(
          color: gold,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Stack(
          children: [
            Positioned(
              right: 4,
              bottom: 0,
              child: Image.asset(
                AppAssets.recentSuraDecoration,
                height: 125,
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    sura.englishName,
                    style: const TextStyle(
                      color: dark,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    sura.arabicName,
                    style: const TextStyle(
                      color: dark,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '${sura.verses} Verses',
                    style: const TextStyle(
                      color: dark,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class SuraListItem extends StatelessWidget {
  final Sura sura;
  final VoidCallback onTap;

  const SuraListItem({
    super.key,
    required this.sura,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 13),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.white54),
          ),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 50,
              height: 50,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    AppAssets.suraNumberBadge,
                    width: 50,
                    height: 50,
                    errorBuilder: (_, __, ___) {
                      return const Icon(
                        Icons.star_border_rounded,
                        color: Colors.white,
                        size: 50,
                      );
                    },
                  ),
                  Text(
                    '${sura.number}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    sura.englishName,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  Text(
                    '${sura.verses} Verses',
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              sura.arabicName,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class QuranBottomBar extends StatelessWidget {
  final int selectedIndex;
  final VoidCallback? onQuranTap;

  const QuranBottomBar({
    super.key,
    required this.selectedIndex,
    this.onQuranTap,
  });

  void _openPage(BuildContext context, int index) {
    if (index == selectedIndex) {
      if (index == 0 && onQuranTap != null) {
        onQuranTap!();
      }
      return;
    }

    Widget page;

    switch (index) {
      case 0:
        page = const HomeScreen();
        break;
      case 1:
        page = const HadithScreen();
        break;
      case 2:
        page = const FeatureScreen(
          title: 'Tasbeeh',
          selectedIndex: 2,
        );
        break;
      case 3:
        page = const FeatureScreen(
          title: 'Radio',
          selectedIndex: 3,
        );
        break;
      default:
        page = const FeatureScreen(
          title: 'time',
          selectedIndex: 4,
        );
    }

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      color: gold,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _navItem(
            context: context,
            index: 0,
            icon: AppAssets.quran,
          ),
          _navItem(
            context: context,
            index: 1,
            icon: AppAssets.hadith,
            ),
          _navItem(
            context: context,
            index: 2,
            icon: AppAssets.tasbeeh,
          ),
          _navItem(
            context: context,
            index: 3,
            icon: AppAssets.radio,
          ),
          _navItem(
            context: context,
            index: 4,
            icon: AppAssets.time,
          ),
        ],
      ),
    );
  }

  Widget _navItem({
  required BuildContext context,
  required int index,
  required String icon,
}) {
  final isSelected = index == selectedIndex;

  return InkWell(
    onTap: () => _openPage(context, index),
    borderRadius: BorderRadius.circular(22),
    child: Container(
      width: 54,
      height: 48,
      alignment: Alignment.center,
      decoration: isSelected
          ? BoxDecoration(
              color: const Color(0xFF8A7653),
              borderRadius: BorderRadius.circular(22),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.35),
                  blurRadius: 8,
                  offset: const Offset(0, 3),
                ),
              ],
            )
          : null,
      child: ColorFiltered(
        colorFilter: ColorFilter.mode(
          isSelected ? Colors.white : dark,
          BlendMode.srcIn,
        ),
        child: Image.asset(
          icon,
          width: 30,
          height: 30,
        ),
      ),
    ),
  );
}
}
class FeatureScreen extends StatelessWidget {
  final String title;
  final int selectedIndex;

  const FeatureScreen({
    super.key,
    required this.title,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dark,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              AppAssets.background,
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(.42),
              colorBlendMode: BlendMode.darken,
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 185),
                Expanded(
                  child: Center(
                    child: Text(
                      title,
                      style: const TextStyle(
                        color: gold,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                QuranBottomBar(selectedIndex: selectedIndex),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class SuraDetailsScreen extends StatefulWidget {
  final Sura sura;

  const SuraDetailsScreen({
    super.key,
    required this.sura,
  });

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  void initState() {
    super.initState();
    load();
  }

  Future<void> load() async {
    verses = await loadSura(widget.sura.number);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (verses.isEmpty) {
      return const Scaffold(
        backgroundColor: dark,
        body: Center(
          child: CircularProgressIndicator(
            color: gold,
          ),
        ),
      );
    }

   return Scaffold(
  backgroundColor: dark,
  body: Stack(
    children: [
      Positioned(
        top: 20,
        left: 0,
        right: 0,
        bottom: 0,
        child: Image.asset(
          AppAssets.suraDetailsBackground,
          fit: BoxFit.cover,
        ),
      ),

      Positioned(
        top: 8,
        left: 8,
        child: SafeArea(
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: gold,
            ),
          ),
        ),
      ),

      SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  const SizedBox(width: 48),

                  Expanded(
                    child: Text(
                      widget.sura.englishName,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: gold,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  const SizedBox(width: 48),
                ],
              ),
            ),

            Text(
              widget.sura.arabicName,
              style: const TextStyle(
                color: gold,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left:20, right: 20, bottom: 112,top: 20),
                child: SingleChildScrollView(
                  child: RichText(
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    text: TextSpan(
                      style: const TextStyle(
                        color: gold,
                        fontSize: 24,
                        height: 2,
                      ),
                      children: [
                        for (int i = 0; i < verses.length; i++)
                          TextSpan(
                            text: "${verses[i]}﴿${i + 1}﴾ ",
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  ),
  );
  }
}