import 'package:flutter/material.dart';
import 'package:pattern/components/widgets/appbar/appbar.dart';
import 'package:pattern/components/widgets/drawer/drawer.dart';

import '../../components/widgets/bottom_navbar/bottom_navbar.dart';
import 'components/screen1_body.dart' show Body;

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

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
