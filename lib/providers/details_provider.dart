import 'package:flutter/foundation.dart';

class DetailsProvider extends ChangeNotifier {
  String gameTitle;
  String image;

  void setDetails(String title, String image) {
    gameTitle = title;
    this.image = image;

    notifyListeners();
  }
}
