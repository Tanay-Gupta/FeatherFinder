import 'package:birddetector/screens/homepage/home_screen.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/onboardingBird.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/logo.png"  , width: 55,
                            height: 55,),
                    const Text(
                      'Feather\nFinder',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'Outfit',
                        fontWeight: FontWeight.w400,
                        height: 1,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                const Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    'AI Bird Detector',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.w400,
                      //height: 0.05,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const SizedBox(
                        width: 230,
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Exhibiting over ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 48,
                                    fontFamily: 'Outfit',
                                    fontWeight: FontWeight.w400,
                                    height: 1.2),
                              ),
                              TextSpan(
                                text: '350 ',
                                style: TextStyle(
                                    color: Color(0xFFF59C1D),
                                    fontSize: 48,
                                    fontFamily: 'Outfit',
                                    fontWeight: FontWeight.w400,
                                    height: 1.2),
                              ),
                              TextSpan(
                                text: 'birds.',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 48,
                                    fontFamily: 'Outfit',
                                    fontWeight: FontWeight.w400,
                                    height: 1.2),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()),
                          );
                        },
                        child: Image.asset(
                          "assets/images/nextarrow.png",
                          width: 55,
                          height: 55,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 70,
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
