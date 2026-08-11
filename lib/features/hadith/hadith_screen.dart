import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'hadith_card.dart';
import 'hadith_data.dart';
import 'hadith_details_screen.dart';
import 'hadith_model.dart';
import '../home/home_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const Color gold = Color(0xFFE2BE7F);
const Color dark = Color(0xFF202020);

class HadithScreen extends StatefulWidget {
  const HadithScreen({super.key});

  @override
  State<HadithScreen> createState() => _HadithScreenState();
}

class _HadithScreenState extends State<HadithScreen> {
  List<Hadith> hadiths = [];

  @override
  void initState() {
    super.initState();
    load();
  }

  Future<void> load() async {
    hadiths = await loadAllHadiths();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (hadiths.isEmpty) {
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
          // الخلفية تغطي الشاشة بالكامل
          Positioned.fill(
            child: Image.asset(
              'assets/images/hadith/hadith_screen_background.png',
              fit: BoxFit.fill,
            ),
          ),
          
          SafeArea(
            child: Column(
              children: [
                SizedBox(height: 110.h),
                Expanded(
                  child: Center(
                    child: CarouselSlider.builder(
                      itemCount: hadiths.length,
                      options: CarouselOptions(
                        height: 500.h,
                        enlargeCenterPage: true,
                        viewportFraction: 0.82,
                        enableInfiniteScroll: false,
                      ),
                      itemBuilder: (context, index, realIndex) {
                        final hadith = hadiths[index];

                        return HadithCard(
                          hadith: hadith,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => HadithDetailsScreen(
                                  hadith: hadith,
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const QuranBottomBar(selectedIndex: 1),
    );
  }
}