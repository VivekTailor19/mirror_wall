import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../provider/education_provider.dart';

class Edu_WebPages extends StatefulWidget {
  const Edu_WebPages({Key? key}) : super(key: key);

  @override
  State<Edu_WebPages> createState() => _Edu_WebPagesState();
}

class _Edu_WebPagesState extends State<Edu_WebPages> {

  EducationProvider? epT;
  EducationProvider? epF;

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

    epT = Provider.of<EducationProvider>(context);
    epT = Provider.of<EducationProvider>(context,listen:false);

    int index = ModalRoute.of(context)!.settings.arguments as int;


    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [

            Expanded(
              child: InAppWebView(

                initialUrlRequest:
                URLRequest(url: Uri.parse("${epT!.platformlist[index].link}")),

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

                  epF!.changeprogress((progress/100).toDouble());

                },

                pullToRefreshController: pullToRefreshController,


              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () => webcontroller!.goBack(),
                  icon: Icon(Icons.arrow_back_rounded),
                  iconSize: 25,
                  color: Colors.black87,
                ),
                IconButton(
                  onPressed: () => webcontroller!.reload(),
                  icon: Icon(Icons.refresh_rounded),
                  iconSize: 25,
                  color: Colors.black87,
                ),
                IconButton(
                  onPressed: () => webcontroller!.goForward(),
                  icon: Icon(Icons.arrow_forward_rounded),
                  iconSize: 25,
                  color: Colors.black87,
                ),
              ],
            ),
          ],
        ),

      ),
    );
  }
}
