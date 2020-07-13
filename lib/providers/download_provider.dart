import 'package:flutter/foundation.dart';

class DownloadProvider extends ChangeNotifier {
  bool isDownloadTapped = false;
  String gameTitle;
  String image;

  void setHovering(bool value) {
    isDownloadTapped = value;

    notifyListeners();
  }

  void setDownloading(String label, String image) {
    gameTitle = label;
    this.image = image;

    notifyListeners();
  }
}
