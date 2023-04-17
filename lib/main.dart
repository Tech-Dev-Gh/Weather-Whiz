import 'package:flutter/material.dart';

import 'presentation/home/home.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(fontFamily: 'SF Pro'),
      home: const Home(),
    ),
  );
}
