import 'package:flutter/cupertino.dart';

import '../model/platform_model.dart';

class EducationProvider extends ChangeNotifier
{
  List<PlatformModel> platformlist = [
    PlatformModel(name: "W3School",link: "https://www.w3schools.com/",logo: "assets/images/platform/w3school.png"),
    PlatformModel(name: "JavatPoint",link: "https://www.javatpoint.com/",logo: "assets/images/platform/javatpoint.png"),
    PlatformModel(name: "Tutorials Point",link: "https://www.tutorialspoint.com/index.htm",logo: "assets/images/platform/tutorialpoints.png"),
    PlatformModel(name: "Great Learning",link: "https://www.mygreatlearning.com/",logo: "assets/images/platform/greatlearning.png"),
    PlatformModel(name: "SimpliLearn",link: "https://www.simplilearn.com/",logo: "assets/images/platform/simplilearn.png"),
    PlatformModel(name: "Free Code Camp",link: "https://www.freecodecamp.org/",logo: "assets/images/platform/freecodecamp.png"),
  ];

  double p1 = 0;

  void changeprogress(double updated)
  {
    p1 = updated;
    notifyListeners();
  }



}