import 'package:example_app/src/utils/environment.dart';
import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: appBarHeight, horizontal: 16),
        child: Column(
          children: [Text(Environment.apiUrl)],
        ),
      ),
    );
  }
}
