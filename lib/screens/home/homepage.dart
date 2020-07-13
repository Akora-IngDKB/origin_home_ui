import 'package:flutter/material.dart';
import 'package:linux_try/screens/components/app_bar.dart';
import 'package:linux_try/screens/components/drawer.dart';
import 'package:linux_try/screens/extras/game_details.dart';
import 'package:linux_try/screens/home/home_body.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OriginAppBar(),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OriginDrawer(),
          Expanded(
            child: HomeBody(),
          ),
        ],
      ),
      drawerScrimColor: Colors.black.withOpacity(0.7),
      endDrawer: GameDetails(),
    );
  }
}
