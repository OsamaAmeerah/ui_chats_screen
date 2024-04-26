import 'package:flutter/material.dart';

  const deafultPadding = 14.0;

const backgroundclr = Color(0xFF22325B);
const cardColor = Color(0xFF374A7A);
const searchSearchColor = Color(0xFF2C3B64);
const searchTextColor = Color(0xFF5F7099);
const iconCardColor = Color(0xFF7B95B1);
const wColor = Colors.white;
TextStyle textStyle (double fontSize , Color color) {
  return TextStyle(
    fontSize: fontSize,
    fontFamily: 'Carpaccio',
    color: color,
  );
}


List<String> doctorsNames = [
  'Dr. Richard D. Pearson',
  'Dr. Robert J. Boyle',
  'Dr. Mark D. Miller',
  'Dr. William D. Steers',
  'Dr. Steven T. DeKosky',
];
List<String> doctorsImage = [
  'assets/images/d1.jpg',
  'assets/images/d2.jpg',
  'assets/images/d3.jpg',
  'assets/images/d4.jpg',
  'assets/images/d5.jpg',
];
List<String> doctorsMessages = [
  'Hello! how can i help you?',
  'Thank you for visiting',
  'What was your last meal?',
  'Thank you for your patience.',
  'Sorry, I am not available now.',
];
List<String> unreadMessagesNumber = [
  '2',
  '1',
  '7',
  '5',
  '3',
];
List<String> messagesTimes = [
  '16:52',
  '12:11',
  '03:49',
  '05:22',
  '08:46',
];