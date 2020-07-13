import 'package:flutter/material.dart';
import 'package:linux_try/providers/download_provider.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
import 'package:provider/provider.dart';

class DownloaderBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<DownloadProvider>(builder: (context, provider, _) {
      return Material(
        type: MaterialType.card,
        elevation: 16,
        child: Stack(
          children: [
            Image.asset(
              provider.image ?? 'assets/nfs_heat.jpg',
              fit: BoxFit.cover,
              width: 1000,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.65),
                backgroundBlendMode: BlendMode.darken,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 75,
                height: 75,
                child: LiquidCircularProgressIndicator(
                  backgroundColor: Colors.white,
                  value: 0.87,
                  valueColor: AlwaysStoppedAnimation(Colors.green),
                  center: Text(
                    "87%",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 8,
              bottom: 8,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.pause_circle_outline,
                    color: Colors.white,
                  ),
                  SizedBox(width: 8),
                  Icon(
                    Icons.close,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
