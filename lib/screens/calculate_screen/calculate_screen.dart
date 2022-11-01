import 'package:flutter/material.dart';

import 'components/calculate_screen_body.dart' show CalculateScreenBody;

class CalculateScreen extends StatelessWidget {
  const CalculateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculate Screen'),
      ),
      body: const CalculateScreenBody(),
    );
  }
}
