import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'apna_education/provider/education_provider.dart';
import 'apna_education/screens/edu_platforms.dart';
import 'apna_education/screens/edu_webpage.dart';
import 'apna_education/screens/education_home.dart';

void main() {
  runApp(
    MultiProvider(

      providers: [
        ChangeNotifierProvider(create: (context) => EducationProvider(),),

      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          "/":(context) => Edu_Platforms(),
          "edupage":(context) => Edu_WebPages(),

        },
      ),
    ),
  );
}
