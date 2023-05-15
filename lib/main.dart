import 'package:flutter/material.dart';
import 'package:mirror_wall/apna_collection/provider/ott_provider.dart';
import 'package:provider/provider.dart';

import 'apna_collection/screens/ott_home.dart';
import 'apna_collection/screens/ott_platform.dart';
import 'apna_education/provider/education_provider.dart';
import 'apna_education/screens/edu_platforms.dart';
import 'apna_education/screens/edu_webpage.dart';
import 'apna_education/screens/education_home.dart';

void main() {
  runApp(
    MultiProvider(

      providers: [
        ChangeNotifierProvider(create: (context) => EducationProvider(),),
        ChangeNotifierProvider(create: (context) => OTTProvider(),),

      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "ott",
        routes: {
          "/":(context) => Edu_Platforms(),
          "edupage":(context) => Edu_WebPages(),
          "ott":(context) => Apna_OTT(),
          "ottpage":(context) => OTT_Page(),

        },
      ),
    ),
  );
}
