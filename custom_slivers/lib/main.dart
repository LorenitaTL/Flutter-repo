import 'dart:ui';

import 'package:custom_slivers/pages/sliver_page.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: SliverPage(),
    );
  }
}
