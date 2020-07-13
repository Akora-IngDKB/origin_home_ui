import 'package:flutter/material.dart';
import 'package:linux_try/providers/details_provider.dart';
import 'package:provider/provider.dart';

class RecentlyPlayed extends StatelessWidget {
  final height = 200.0;
  List<String> labels = [
    'Need for Speed Payback',
    'FIFA 20',
    "Assasin's Creed",
    'Hitman 2',
    'WWE 2k20'
  ];
  List<String> images = [
    'assets/nfs_payback.jpg',
    'assets/fifa20.jpg',
    'assets/assasins_creed.jpeg',
    'assets/hitman.jpg',
    'assets/wwe2k20.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: height + 20),
      child: ListView.builder(
        shrinkWrap: true,
        primary: false,
        scrollDirection: Axis.horizontal,
        itemCount: labels.length,
        itemBuilder: (context, index) => _buildCard(
          context,
          labels[index],
          images[index],
        ),
      ),
    );
  }

  Widget _buildCard(BuildContext context, String label, String image) {
    return Container(
      width: height * 0.8,
      margin: const EdgeInsets.only(right: 48),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(1, 6),
            blurRadius: 6,
            spreadRadius: 3,
            color: Colors.grey[300],
          ),
        ],
      ),
      child: InkWell(
        hoverColor: Colors.transparent,
        onTap: () {
          Provider.of<DetailsProvider>(context, listen: false)
              .setDetails(label, image);
          Scaffold.of(context).openEndDrawer();
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              image,
              fit: BoxFit.cover,
              width: 1000,
              height: height * 0.8,
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(label),
            ),
          ],
        ),
      ),
    );
  }
}
