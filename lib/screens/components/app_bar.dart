import 'package:flutter/material.dart';

class OriginAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 1.5),
            blurRadius: 6,
            spreadRadius: 6,
            color: Colors.grey[200],
          ),
        ],
      ),
      child: Row(
        children: [
          SizedBox(
            height: 48,
            width: 48,
            child: Image.asset('assets/origin.jpeg'),
          ),
          SizedBox(width: 24),
          Text('Origin'),
          SizedBox(width: 16),
          Text('Games'),
          SizedBox(width: 16),
          Text('Friends'),
          SizedBox(width: 16),
          Text('View'),
          SizedBox(width: 16),
          Text('Help'),
          Spacer(),
          Container(
            height: 32,
            width: 200,
            margin: const EdgeInsets.symmetric(horizontal: 24),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.never,
                prefixIcon: Icon(Icons.search),
                hintText: 'Search games',
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.purple,
            ),
            child: Icon(
              Icons.notifications,
              color: Colors.white,
              size: 18,
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(left: 24),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/gamer.jpeg'),
                ),
                Positioned(
                  top: -1,
                  left: -2,
                  child: Container(
                    height: 16,
                    width: 16,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.lightGreen,
                      border: Border.all(
                        color: Colors.white,
                        width: 2.5,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(72);
}
