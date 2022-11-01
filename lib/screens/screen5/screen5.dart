import 'package:flutter/material.dart';

import '../../components/widgets/appbar/appbar.dart';
import '../../components/widgets/bottom_navbar/bottom_navbar.dart';
import '../../components/widgets/drawer/drawer.dart';
import 'components/screen5_body.dart';

class Screen5 extends StatelessWidget {
  const Screen5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, kToolbarHeight),
        child: KAppBar(),
      ),
      endDrawer: KDrawer(),
      body: Body(),
      bottomNavigationBar: KBottomNavBar(),
    );
  }
}
