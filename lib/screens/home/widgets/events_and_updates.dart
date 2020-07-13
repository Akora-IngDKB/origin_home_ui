import 'package:flutter/material.dart';
import 'package:linux_try/providers/download_provider.dart';
import 'package:provider/provider.dart';

class GameEventsAndUpdates extends StatelessWidget {
  final height = 170.0;
  final labels = <String>[
    'Call of Duty - Black Ops',
    'Far Cry 5',
    'Need For Sped - Heat',
    'Grand Theft Auto V',
  ];

  final images = <String>[
    'assets/cod_black_ops.jpg',
    'assets/far_cry5.jpg',
    'assets/nfs_heat.jpg',
    'assets/gta5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: height * 1.35),
      child: ListView.builder(
        shrinkWrap: true,
        primary: false,
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (context, index) =>
            EventUpdatesCard(images[index], labels[index]),
      ),
    );
  }
}

class EventUpdatesCard extends StatefulWidget {
  final String image;
  final String label;

  const EventUpdatesCard(this.image, [this.label]);

  @override
  _EventUpdatesCardState createState() => _EventUpdatesCardState();
}

class _EventUpdatesCardState extends State<EventUpdatesCard> {
  final height = 340.0;
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Provider.of<DownloadProvider>(context, listen: false)
            .setDownloading(widget.label, widget.image);
      },
      onHover: (value) {
        setState(() {
          isHovered = value;
        });
      },
      child: Stack(
        children: [
          Container(
            width: height,
            margin: const EdgeInsets.only(right: 48, bottom: 48),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: Offset(12, 15),
                  blurRadius: 8,
                  spreadRadius: 3,
                  color: Colors.grey[350],
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              child: Image.asset(
                widget.image,
                fit: BoxFit.cover,
                height: height * 0.9,
              ),
            ),
          ),
          AnimatedContainer(
            duration: kThemeAnimationDuration,
            width: height,
            alignment: Alignment.center,
            margin: const EdgeInsets.only(right: 48, bottom: 48),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              color: isHovered
                  ? Colors.black.withOpacity(0.7)
                  : Colors.transparent,
            ),
            child: isHovered
                ? Icon(
                    Icons.cloud_download,
                    color: Colors.redAccent,
                    size: 32,
                  )
                : Offstage(),
          ),
        ],
      ),
    );
  }
}
