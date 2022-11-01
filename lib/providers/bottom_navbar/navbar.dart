import 'package:flutter/widgets.dart';
import '../../screens/calculate_screen/calculate_screen.dart';

import '../../helpers/routes/custom_routes.dart';

class BottomNavBarProvider {
  static Screens selected = Screens.one;

  static Widget _screen() {
    switch (selected) {
      case Screens.one:
        return const CalculateScreen();
      // case Screens.two:
      //   return const Screen2();
      // case Screens.three:
      //   return const Screen3();
      // case Screens.four:
      //   return const Screen4();
      // case Screens.five:
      //   return const Screen5();
      default:
        return const CalculateScreen();
    }
  }

  static Widget get screen => _screen();

  static Future<void> select(
      {required BuildContext context, required Screens value}) async {
    selected = value;
    await Navigator.pushReplacement(
      context,
      FadeRoute(page: screen),
    );
  }
}

enum Screens { one, two, three, four, five }
