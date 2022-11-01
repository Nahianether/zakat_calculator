import 'package:flutter/material.dart';
import 'package:pattern/helpers/routes/custom_routes.dart';
import 'package:pattern/screens/calculate_screen/calculate_screen.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 40,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange.shade900.withOpacity(0.85),
          ),
          onPressed: () {
            Navigator.push(
              context,
              FadeRoute(
                page: const CalculateScreen(),
              ),
            );
          },
          child: const Text('Calculate Screen'),
        ),
      ),
    );
  }
}
