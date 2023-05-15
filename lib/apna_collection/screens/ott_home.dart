import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../model/ottmode.dart';
import '../provider/ott_provider.dart';

class Apna_OTT extends StatefulWidget {
  const Apna_OTT({Key? key}) : super(key: key);

  @override
  State<Apna_OTT> createState() => _Apna_OTTState();
}

class _Apna_OTTState extends State<Apna_OTT> {

  OTTProvider? ottT;
  OTTProvider? ottF;

  @override
  Widget build(BuildContext context) {

    ottT = Provider.of<OTTProvider>(context);
    ottF = Provider.of<OTTProvider>(context,listen: false);


    return Scaffold(
      body: GridView.builder(
          itemCount: ottF!.platformlist.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2
          ),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, "edupage",arguments: index);
              },
                child: OTTTab(ottT!.platformlist[index]));
          },)
    );
  }

  Widget OTTTab(OTTModel pm)
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
