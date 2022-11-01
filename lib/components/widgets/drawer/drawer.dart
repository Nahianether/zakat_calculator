import 'package:flutter/material.dart';

class KDrawer extends StatelessWidget {
  const KDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    return Drawer(
      child: ListView(
        children: <Widget>[
          // const DrawerHeader(
          //   child: Text(
          //     'Drawer Header',
          //     style: TextStyle(
          //       fontSize: 24,
          //     ),
          //   ),
          //   decoration: BoxDecoration(
          //     color: Colors.grey,
          //   ),
          // ),
          ListTile(
            title: const Text('Change Theme'),
            trailing: Switch(
              value: isChecked,
              onChanged: (bool value) {
                isChecked = value;
              },
            ),
            onTap: () {},
          ),
          const Divider(
            thickness: 2,
          ),
          ListTile(
            title: const Text('Change Language'),
            trailing: Switch(
              value: isChecked,
              onChanged: (bool value) {
                isChecked = value;
              },
            ),
            onTap: () {},
          ),
          const Divider(
            thickness: 2,
          ),
        ],
      ),
    );
  }
}
