import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.itemText, required this.itemIcon});
  final String itemText;
  final IconData itemIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Icon(itemIcon,color: Colors.black38),
          SizedBox(
            width: 10,
          ),
          Text(
            "$itemText",
            style: TextStyle(fontSize: 16),
          )
        ],
      ),
    );
  }
}
