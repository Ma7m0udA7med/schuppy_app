// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:schupply_app/login/view/login.dart';
import 'package:schupply_app/onboarding/model/onboarding_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:schupply_app/widget/primary_color.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: OnboardingModel.length,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (context, index) => Column(
                children: [
                  SizedBox(height: 50),
                  Image.asset(onboardingModel[index].image1),

                  SizedBox(height: 50),
                  Text(
                    onboardingModel[index].title,
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.w800,
                      ),

                   

                    ),
                  ),
                  SizedBox(height: 50),
                  Image.asset(onboardingModel[index].image2),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: List.generate(
                    onboardingModel.length,
                    (val) => Container(
                      margin: EdgeInsets.only(right: 7),
                      height: 10,
                      width: _currentPage == val ? 28 : 15,
                      decoration: BoxDecoration(
                        color: _currentPage == val
                            ? PrimaryColor
                            : Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    if (_currentPage == onboardingModel.length - 1) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (c) => Login()),
                      );
                    } else {
                      _controller.nextPage(
                        duration: Duration(milliseconds: 400),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  child: Image.asset('assets/images/m3.png', width: 79),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
