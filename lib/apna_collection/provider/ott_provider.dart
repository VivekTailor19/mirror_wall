import 'package:flutter/cupertino.dart';

import '../model/ottmode.dart';

class OTTProvider extends ChangeNotifier
{
  List<OTTModel> platformlist = [
    OTTModel(name: "Amazon Prime",link: "https://www.primevideo.com/",logo: "assets/images/platform/w3school.png"),
    OTTModel(name: "Netflix",link: "https://www.netflix.com/in/",logo: "assets/images/platform/javatpoint.png"),
    OTTModel(name: "Amazon Mini",link: "https://www.amazon.in/minitv",logo: "assets/images/platform/tutorialpoints.png"),
    OTTModel(name: "Voot",link: "https://www.voot.com/",logo: "assets/images/platform/greatlearning.png"),
    OTTModel(name: "Zee5",link: "https://www.zee5.com/",logo: "assets/images/platform/simplilearn.png"),
    OTTModel(name: "AltBalaji",link: "https://www.freecodecamp.org/",logo: "assets/images/platform/freecodecamp.png"),
    OTTModel(name: "HotStar",link: "https://www.hotstar.com/in",logo: "assets/images/platform/freecodecamp.png"),
  ];

  double p1 = 0;

  void changeprogress(double updated)
  {
    p1 = updated;
    notifyListeners();
  }



}