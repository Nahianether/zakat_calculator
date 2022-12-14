import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:pattern/screens/home_screen/home.dart';

import '../components/common/functions/no_internet.dart';
import '../components/common/ui/no_internet_screen.dart';
import '../helpers/size_config/size_config.dart' show ScreenSize;

class Wrapper extends StatelessWidget {
  final ScreenSize _sizeConfig = ScreenSize();

  Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _sizeConfig.init(context);
    return StreamBuilder<ConnectivityResult>(
      stream: connectionStream,
      builder: (context, snapshot) {
        if (snapshot.hasData && snapshot.data == ConnectivityResult.none) {
          return const NoInternetConnectionScreen();
        }
        return const HomeScreen();
      },
    );
  }
}
