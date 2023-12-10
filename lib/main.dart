// import 'dart:convert';
import 'dart:io';

import 'package:birddetector/screens/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite_v2/tflite_v2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //  home: ImagePickerDemo(),
      home: OnboardingScreen(),
    );
  }
}

