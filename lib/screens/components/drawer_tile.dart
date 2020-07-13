import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  final String title;
  final bool isSelected;
  final bool isSubMenu;

  const DrawerTile({
    @required this.title,
    this.isSelected = false,
    this.isSubMenu = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        alignment: Alignment.centerLeft,
        width: double.infinity,
        height: 48,
        margin:
            EdgeInsets.symmetric(vertical: 2, horizontal: isSubMenu ? 24 : 0),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          border: isSelected
              ? Border(
                  left: BorderSide(
                    color: Colors.redAccent,
                    width: 4,
                  ),
                )
              : Border(),
          gradient: LinearGradient(
            colors: [
              isSelected ? Colors.white : Colors.grey[200],
              Colors.grey[200],
            ],
          ),
        ),
        child: Text(title),
      ),
    );
  }
}
