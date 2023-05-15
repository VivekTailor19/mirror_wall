import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'edu_platforms.dart';

class Apna_Education extends StatefulWidget {
  const Apna_Education({Key? key}) : super(key: key);

  @override
  State<Apna_Education> createState() => _Apna_EducationState();
}

class _Apna_EducationState extends State<Apna_Education> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: Edu_Platforms()

      ),
    );
  }

  Widget Tabs(String tabtitle)
  {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(height: 25,width:75,
        alignment: Alignment.center,
        color: Colors.teal.shade200,
        child: Text("$tabtitle"),),
    );
  }
}
