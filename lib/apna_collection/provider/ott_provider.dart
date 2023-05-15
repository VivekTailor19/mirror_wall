import 'package:flutter/cupertino.dart';

import '../model/ottmode.dart';

class OTTProvider extends ChangeNotifier
{
  List<OTTModel> platformlist = [
    OTTModel(name: "Amazon Prime",link: "https://www.primevideo.com/",logo: "https://sm.ign.com/ign_in/cover/p/prime-vide/prime-video_bpe3.jpg"),
    OTTModel(name: "Netflix",link: "https://www.netflix.com/in/",logo: "https://cstipstech.com/wp-content/uploads/2023/04/Best-movies-on-netflix-right-now.jpeg"),
    OTTModel(name: "Amazon Mini",link: "https://www.amazon.in/minitv",logo: "https://yt3.googleusercontent.com/fBNVJ-Ywc2Kp8Ph-0EvCxP-JKk1aFAs-8Hbh0SCbwegM5_0ErzZkSyQVZEhxxk5xbubUwcnOMaA=s900-c-k-c0x00ffffff-no-rj"),
    OTTModel(name: "Voot",link: "https://www.voot.com/",logo: "https://www.robosoftin.com/assets/img/work/voot/img_voot_challenge.webp"),
    OTTModel(name: "Zee5",link: "https://www.zee5.com/",logo: "https://www.adgully.com/img/800/201906/zee5.jpg"),
    OTTModel(name: "AltBalaji",link: "https://www.altbalaji.com/",logo: "https://www.exchange4media.com/news-photo/113485-103460-altbalaji.jpg"),
    OTTModel(name: "HotStar",link: "https://www.hotstar.com/in",logo: "https://play-lh.googleusercontent.com/Vd6XKGvZKp8r3Ikz4vRykNJaMjFULqftsqviOsMPepYTOu4ef-4HkUo3iEcPpOi4c2s"),
    OTTModel(name: "SonyLiv",link: "https://www.sonyliv.com/",logo: "https://images.news18.com/ibnlive/uploads/2020/06/1592394351_sonyliv-new-logo.jpg"),
    OTTModel(name: "Discovery +",link: "https://www.discoveryplus.in/",logo: "https://www.flickonclick.com/wp-content/uploads/2022/09/How-to-Get-Discovery-Plus-Subscription-for-Free-696x522.jpg"),
    OTTModel(name: "TATAPlay Binge",link: "https://www.tataplaybinge.com/",logo: "https://yt3.googleusercontent.com/Gy0oXhS6bUEA6Jwib3qGE6nCvOFYaTQdD2UsmO-uwhZy1rIrbgcIcxJGdZVfjV7XcfPoRjwRKw=s900-c-k-c0x00ffffff-no-rj"),
  ];

  double p1 = 0;

  void changeprogress(double updated)
  {
    p1 = updated;
    notifyListeners();
  }



}