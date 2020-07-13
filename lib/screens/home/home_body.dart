import 'package:flutter/material.dart';
import 'package:linux_try/providers/download_provider.dart';
import 'package:linux_try/screens/extras/downloader_body.dart';
import 'package:linux_try/screens/home/widgets/chats.dart';
import 'package:linux_try/screens/home/widgets/events_and_updates.dart';
import 'package:linux_try/screens/home/widgets/recently_played.dart';
import 'package:provider/provider.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.grey[100],
      child: Stack(
        children: [
          SingleChildScrollView(
            primary: true,
            padding: const EdgeInsets.fromLTRB(24, 24, 0, 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Recently Played'),
                SizedBox(height: 24),
                RecentlyPlayed(),
                SizedBox(height: 72),
                Text('Game Events And Updates'),
                SizedBox(height: 24),
                GameEventsAndUpdates(),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 50,
            child: ChatsTip(),
          ),
          Positioned(
            bottom: 4,
            left: 8,
            child: Consumer<DownloadProvider>(builder: (context, provider, _) {
              return AnimatedContainer(
                duration: kThemeAnimationDuration,
                color: Colors.cyan,
                height: provider.isDownloadTapped ? 200 : 0,
                width: provider.isDownloadTapped ? 400 : 0,
                child: DownloaderBody(),
              );
            }),
          ),
        ],
      ),
    );
  }
}
