import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../model/platform_model.dart';
import '../provider/education_provider.dart';

class Edu_Platforms extends StatefulWidget {
  const Edu_Platforms({Key? key}) : super(key: key);

  @override
  State<Edu_Platforms> createState() => _Edu_PlatformsState();
}

class _Edu_PlatformsState extends State<Edu_Platforms> {

  EducationProvider? eduT;
  EducationProvider? eduF;

  @override
  Widget build(BuildContext context) {
    eduT = Provider.of<EducationProvider>(context);
    eduF = Provider.of<EducationProvider>(context,listen: false);


    return Scaffold(
      appBar: AppBar(title: Text("Mera_Education",style: TextStyle(color: Colors.teal),),centerTitle: true,elevation: 0,backgroundColor: Colors.white,),
      body: GridView.builder(
          itemCount: eduF!.platformlist.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2
          ),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, "edupage",arguments: index);
              },
                child: PlatformTab(eduT!.platformlist[index]));
          },)
    );
  }

  Widget PlatformTab(PlatformModel pm)
  {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        height: 200,width: 200,
        decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(height: 150,width: 150,
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage("${pm.logo}",),fit: BoxFit.fill
                ),
              ),

            ),
            Text("${pm.name}",style: TextStyle(fontSize: 15),)
          ],
        ),
      ),
    );
  }
}
