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
      appBar: AppBar(title: Text("Apna_Collection",style: TextStyle(color:Colors.indigo.shade100),),centerTitle: true,backgroundColor: Colors.black,),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: GridView.builder(
            itemCount: ottF!.platformlist.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2
            ),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "ottpage",arguments: index);
                },
                  child: OTTTab(ottT!.platformlist[index]));
            },),
      )
    );
  }

  Widget OTTTab(OTTModel pm)
  {
    return Padding(
      padding: const EdgeInsets.all(4.5),
      child: Container(
        height: 210,width: 210,
        decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(height: 145,width: 145,
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: NetworkImage("${pm.logo}",),fit: BoxFit.fill
                ),
              ),

            ),

            SizedBox(height: 3,),
            Text("${pm.name}",style: TextStyle(fontSize: 15,color: Colors.white),)
          ],
        ),
      ),
    );
  }
}
