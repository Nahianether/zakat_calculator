import 'package:flutter/material.dart';

import 'components/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Zakat Calculator'),
      ),
      body: const HomeScreenBody(),
    );
  }
}
