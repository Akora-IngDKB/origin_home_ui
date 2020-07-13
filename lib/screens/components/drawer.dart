import 'package:flutter/material.dart';
import 'package:linux_try/screens/components/drawer_tile.dart';
import 'package:linux_try/screens/extras/drawer_downloader.dart';

class OriginDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      padding: const EdgeInsets.only(top: 32),
      color: Colors.grey[200],
      child: Column(
        children: [
          DrawerTile(
            title: 'My Home',
            isSelected: true,
          ),
          DrawerTile(
            title: 'Store',
          ),
          DrawerTile(
            title: 'Browse Games',
            isSubMenu: true,
          ),
          DrawerTile(
            title: 'Deals',
            isSubMenu: true,
          ),
          DrawerTile(
            title: 'Free Games',
            isSubMenu: true,
          ),
          DrawerTile(
            title: 'Origin Access',
            isSubMenu: true,
          ),
          DrawerTile(
            title: 'Game Library',
          ),
          Spacer(),
          DrawerDownloader(),
        ],
      ),
    );
  }
}
