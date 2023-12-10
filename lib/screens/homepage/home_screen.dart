import 'dart:io';

import 'package:birddetector/screens/cameraPage/camera_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../galleryPage/gallery_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/homebg.png"),
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
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image.asset(
                        "assets/images/logo.png",
                        fit: BoxFit.fitHeight,
                        width: 55,
                        height: 55,
                      ),
                      const Text(
                        'Feather\nFinder',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w600,
                          height: 1,
                        ),
                      ),
                      const Spacer(),
                      Image.asset(
                        "assets/images/Menu.png",
                        width: 40,
                        height: 40,
                      )
                    ],
                  ),
                ),

                //-------------------------------------------------------text
                const SizedBox(
                  height: 40,
                ),
                const Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Text(
                        'Welcome ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w100,
                          height: 0.04,
                        ),
                      ),
                      Text(
                        'Twinkle',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w400,
                          height: 0.04,
                        ),
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 16, 20, 20),
                  child: SizedBox(
                    width: 310,
                    child: Text(
                      'What would you like to learn about?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontFamily: 'Outfit',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
//-----------------------------------------------------------------------
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: CarouselSlider(
                      items: items,
                      options: CarouselOptions(
                        height: 40,
                        aspectRatio: 1,
                        viewportFraction: 0.35,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: false,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 900),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: false,
                        enlargeFactor: 0.5,
                        scrollDirection: Axis.horizontal,
                      )),
                ),
//-----------------------------------------------------------------------
                const SizedBox(
                  height: 20,
                ),
                CarouselSlider(
                    items: [
                      slidingImage("Red Parrot", "assets/images/b1.png"),
                      slidingImage("Pink Parrot", "assets/images/b2.png"),
                      slidingImage("White Duck", "assets/images/b3.png"),
                      slidingImage("Golden Sp", "assets/images/b4.png"),
                    ],
                    options: CarouselOptions(
                      height: 246,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.4,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: false,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 900),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: false,
                      enlargeFactor: 0.5,
                      scrollDirection: Axis.horizontal,
                    )),
//-----------------------------------------------------------------------
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                       onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CameraPage()),
                        );
                      },
                      child: Container(
                        width: 120,
                        height: 120,
                        padding: const EdgeInsets.only(bottom: 24),
                        decoration: ShapeDecoration(
                          color: Color(0xFF191919),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "assets/images/camera.png",
                                height: 60,
                                width: 60,
                              ),
                              const Text(
                                'Camera',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'Outfit',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ]),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ImagePickerDemo()),
                        );
                      },
                      child: Container(
                        width: 120,
                        height: 120,
                        padding: const EdgeInsets.only(bottom: 24),
                        decoration: ShapeDecoration(
                          color: Color(0xFF191919),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "assets/images/gallery.png",
                                height: 60,
                                width: 60,
                              ),
                              Text(
                                'Gallery',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'Outfit',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ]),
                      ),
                    )
                  ],
                )
//--------------------------------------------------------------------
              ],
            ),
          ))
        ],
      ),
    );
  }

  List<Widget> items = <Widget>[
    Container(
      width: 120,
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: const Center(
        child: Text(
          '🦜 Parrots',
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontFamily: 'Outfit',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    ),
    Container(
      width: 120,
      height: 42,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1.50, color: Color(0x7F7F7F7F)),
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: const Center(
        child: Text(
          '🦆 Ducks',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontFamily: 'Outfit',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    ),
    Container(
      width: 120,
      height: 42,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1.50, color: Color(0x7F7F7F7F)),
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: const Center(
        child: Text(
          'Crows',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontFamily: 'Outfit',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    ),
  ];

  slidingImage(String name, String imgPath) {
    return Container(
      width: 140,
      height: 246,
      padding: const EdgeInsets.only(bottom: 24),
      decoration: ShapeDecoration(
        color: Color(0xFF191919),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(24.0),
              child: Image.asset("$imgPath")),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 16),
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 108,
                          child: Text(
                            name,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.w500,
                              // height: 0.06,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const SizedBox(
                          width: 108,
                          child: Text(
                            '6 years / H.25 cm',
                            style: TextStyle(
                              color: Color(0xFF7F7F7F),
                              fontSize: 13,
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    SizedBox(
                      width: 108,
                      child: Text(
                        '+ Know More',
                        style: TextStyle(
                          color: Color(0xFFF59C1D),
                          fontSize: 13,
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w300,
                          height: 0.08,
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
    );
  }
}
