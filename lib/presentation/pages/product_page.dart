import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double _initFabHeight = 120.0;
    double _fabHeight = 0;
    double _panelHeightOpen = 0;
    double _panelHeightClosed = 95.0;
    return MaterialApp(
        home: Scaffold(
      // backgroundColor: Color.fromARGB(255, 255, 255, 255),
      // appBar: AppBar(backgroundColor: Color.fromARGB(0, 255, 255, 255),elevation: 0.0,
      // leading: IconButton(icon: Icon(Icons.arrow_back_ios_new_rounded), color: Colors.black, onPressed: () {  },),
      //
      // ),
      appBar: AppBar(
        // backgroundColor: Colors.transparent,
        // elevation: 0.0,
        // systemOverlayStyle: const SystemUiOverlayStyle(
        //   // Status bar color
        //   statusBarColor: Colors.transparent,

        //   // Status bar brightness (optional)
        //   statusBarIconBrightness:
        //       Brightness.dark, // For Android (dark icons)
        //   statusBarBrightness: Brightness.light, // For iOS (dark icons)
        // ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              decoration: BoxDecoration(color: Colors.white),
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "images/Sofa.png",
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          // Positioned(
          //   right: 10,
          //   top: 40,
          //   child:
          // ),
          DraggableScrollableSheet(
            initialChildSize: 0.2,
            minChildSize: 0.2,
            maxChildSize: 1,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  // border: Border.all(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
                ),
                child: Scrollbar(
                  child: ListView.builder(
                    controller: scrollController,
                    itemCount: 25,
                    itemBuilder: (BuildContext context, int index) {
                      return const ListTile(
                        leading: Icon(Icons.ac_unit),
                        // title: Text('Item'),
                      );
                    },
                  ),
                ),
              );
            },
          ),
        ],
      ),
    ));
  }
}
