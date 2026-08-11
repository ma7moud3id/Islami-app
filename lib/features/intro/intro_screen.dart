import 'package:flutter/material.dart';
import '../home/home_screen.dart';

class IntroContent {
  final String image;
  final String title;
  final String description;

  IntroContent({
    required this.image,
    required this.title,
    required this.description,
  });
}

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List<IntroContent> _introContents = [
    IntroContent(
      image: 'assets/images/intro/intro1.png',
      title: 'Welcome To Islami App',
      description: 'Welcome To Islami App',
    ),
    IntroContent(
      image: 'assets/images/intro/intro2.png',
      title: 'Welcome To Islami',
      description: 'We Are Very Excited To Have You In Our Community',
    ),
    IntroContent(
      image: 'assets/images/intro/intro3.png',
      title: 'Reading the Quran',
      description: 'Read, and your Lord is the Most Generous',
    ),
    IntroContent(
      image: 'assets/images/intro/intro4.png',
      title: 'Bearish',
      description: 'Praise the name of your Lord, the Most High',
    ),
    IntroContent(
      image: 'assets/images/intro/intro5.png',
      title: 'Holy Quran Radio',
      description:
          'You can listen to the Holy Quran Radio through the application for free and easily',
    ),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isLastPage = _currentIndex == _introContents.length - 1;

    return Scaffold(
      backgroundColor: const Color(0xff202020),
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                'assets/images/intro/intro_bg.png',
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: _introContents.length,
                    onPageChanged: (index) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                    itemBuilder: (context, index) {
                      final item = _introContents[index];

                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Column(
                          children: [
                            const Spacer(),
                            Image.asset(
                              item.image,
                              height:
                                  MediaQuery.of(context).size.height * 0.55,
                              fit: BoxFit.contain,
                            ),
                            Text(
                              item.title,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontFamily: 'JannaLT',
                                color: Color(0xFFE2BE7F),
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 35),
                            if (index != 0)
                              Text(
                                item.description,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontFamily: 'JannaLT',
                                  color: Color(0xFFE2BE7F),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _currentIndex > 0
                          ? TextButton(
                              onPressed: () {
                                _pageController.previousPage(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeInOut,
                                );
                              },
                              child: const Text(
                                'Back',
                                style: TextStyle(
                                  color: Color(0xFFE2BE7F),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          : const SizedBox(width: 50),
                      Row(
                        children: List.generate(
                          _introContents.length,
                          (index) => Container(
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            width: _currentIndex == index ? 22 : 8,
                            height: 8,
                            decoration: BoxDecoration(
                              color: _currentIndex == index
                                  ? const Color(0xFFE2BE7F)
                                  : const Color(0xFF707070),
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          if (!isLastPage) {
                            _pageController.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          } else {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomeScreen(),
                              ),
                            );
                          }
                        },
                        child: Text(
                          isLastPage ? 'Finish' : 'Next',
                          style: const TextStyle(
                            color: Color(0xFFE2BE7F),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}