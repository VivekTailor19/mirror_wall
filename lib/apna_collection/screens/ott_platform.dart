import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../provider/ott_provider.dart';

class OTT_Page extends StatefulWidget {
  const OTT_Page({Key? key}) : super(key: key);

  @override
  State<OTT_Page> createState() => _OTT_PageState();
}

class _OTT_PageState extends State<OTT_Page> {

  OTTProvider? ottT;
  OTTProvider? ottF;

  TextEditingController txtsearch = TextEditingController();
  InAppWebViewController? webcontroller;
  PullToRefreshController? pullToRefreshController;

  @override
  void initState() {
    pullToRefreshController = PullToRefreshController(
      onRefresh: () {
        webcontroller!.reload();
      },);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {

    ottT = Provider.of<OTTProvider>(context);
    ottT = Provider.of<OTTProvider>(context,listen:false);

    int index = ModalRoute.of(context)!.settings.arguments as int;


    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [

            Expanded(
              child: InAppWebView(

                initialUrlRequest:
                URLRequest(url: Uri.parse("${ottT!.platformlist[index].link}")),

                onLoadStart: (controller, url) {
                  webcontroller = controller;
                  pullToRefreshController!.endRefreshing();
                },

                onLoadStop: (controller, url) {
                  webcontroller = controller;
                  pullToRefreshController!.endRefreshing();
                },

                onLoadError: (controller, url, code, message) {
                  webcontroller = controller;
                  pullToRefreshController!.endRefreshing();
                },

                onProgressChanged: (controller, progress) {
                  webcontroller = controller;
                  pullToRefreshController!.endRefreshing();

                  ottF!.changeprogress((progress/100).toDouble());

                },

                pullToRefreshController: pullToRefreshController,


              ),
            ),
            Container(

              decoration: BoxDecoration(border: Border.all(color: Colors.black),color: Colors.black,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () => webcontroller!.goBack(),
                    icon: Icon(Icons.arrow_back_rounded),
                    iconSize: 25,
                    color: Colors.white,
                  ),
                  IconButton(
                    onPressed: () => webcontroller!.reload(),
                    icon: Icon(Icons.refresh_rounded),
                    iconSize: 25,
                    color: Colors.white,
                  ),
                  IconButton(
                    onPressed: () => webcontroller!.goForward(),
                    icon: Icon(Icons.arrow_forward_rounded),
                    iconSize: 25,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),

      ),
    );
  }
}
