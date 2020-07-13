import 'package:flutter/material.dart';
import 'package:linux_try/providers/download_provider.dart';
import 'package:provider/provider.dart';

class DrawerDownloader extends StatefulWidget {
  @override
  _DrawerDownloaderState createState() => _DrawerDownloaderState();
}

class _DrawerDownloaderState extends State<DrawerDownloader> {
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(color: Colors.white),
      child: Consumer<DownloadProvider>(builder: (context, provider, _) {
        return InkWell(
          onTap: () {
            if (provider.gameTitle != null) {
              provider.setHovering(!provider.isDownloadTapped);
            }
          },
          hoverColor: Colors.transparent,
          child: Container(
            color: Colors.indigo.withOpacity(0.7),
            height: 90,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Consumer<DownloadProvider>(
                  builder: (context, provider, child) =>
                      Text(provider.gameTitle ?? 'No running downloads'),
                ),
                if (provider.gameTitle != null || provider.image != null)
                  Row(
                    children: [
                      Expanded(
                        child: LinearProgressIndicator(
                          backgroundColor: Colors.white,
                          value: 0.87,
                        ),
                      ),
                      SizedBox(width: 8),
                      Text('87%')
                    ],
                  ),
                Text(
                  provider.gameTitle != null ? '0h 59m 11s' : '0h 0m 0s',
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
