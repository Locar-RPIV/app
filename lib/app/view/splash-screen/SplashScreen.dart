// import 'package:flutter/material.dart';

// class StackFlutter extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('LOCAR')),
//       body: incluiStack(),
//     );
//   }
// }

// Widget incluiStack() {
//   return Stack(
//     children: <Widget>[
//       Image.network(
//         'pngtree-public-transport-and-vehicle-vector-seamless-pattern-png-image_1959160.jpg',
//         width: double.infinity,
//         height: double.infinity,
//         fit: BoxFit.cover,
//       ),
//       RaisedButton(
//         shape: RoundedRectangleBorder(
//           borderRadius: new BorderRadius.circular(5.0),
//         ),
//         child: Text('Clique para prosseguir'),
//         onPressed: () {},
//       ),
//     ],
//   );
// }

import 'package:app/core/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            // new Container(
            //   decoration: new BoxDecoration(
            //     image: new DecorationImage(
            //       image: new AssetImage("assets\icons\SplashScreen.svg"),
            //       fit: BoxFit.cover,
            //     ),
            //   ),
            // ),

            new Container(
              height: double.maxFinite,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'pngtree-public-transport-and-vehicle-vector-seamless-pattern-png-image_1959160.jpg'),
                      fit: BoxFit.fitHeight)),
            ),

            new Padding(
              padding: EdgeInsets.only(right: 20.0, top: 670),
              child: Center(
                child: Text(
                  "LOCAR",
                  style: TextStyle(
                      color: primaryColor,
                      fontSize: 40,
                      decoration: TextDecoration.underline),
                ),
              ),
            ),

            // new Center(
            //     child: new Text(
            //   'LOCAR',
            //   style: TextStyle(
            //       decoration: TextDecoration.underline,
            //       fontSize: 40,
            //       color: primaryColor),
            // )),
          ],
        ),
      ),
    );

    // child: Column(
    //   children: [

    // Center(
    //   child: Text('LOCAR',
    //       style: TextStyle(fontSize: 50, color: primaryColor)),
    // ),

    //         Container(
    //             width: 414,
    //             height: 896,
    //                            ),
    //       ],
    //     ),
    //   ),
    // );
    // Padding(
    //   padding: EdgeInsets.only(left: 30, right: 30, top: 10),
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       ListTile(
    //         contentPadding: EdgeInsets.all(0),
    //         title: Text('Detalhes',
    //             style: TextStyle(fontSize: 20, color: primaryColor)),
    //       ),
    //     ],
    //   ),
    // ),

    // body: SingleChildScrollView(
    //   child: Column(
    //     children: [
    // Image.network(
    //   'pngtree-public-transport-and-vehicle-vector-seamless-pattern-png-image_1959160.jpg',
    //   fit: BoxFit.cover,
    // ),
    // child: Container(
    //   height: 1424,
    //   width: 414,
    //     child: Center(
    //       child: Container(
    //         child: Text(
    //           'LOCAR',
    //           style: TextStyle(fontSize: 50, color: primaryColor),
    //         ),
    //       ),
    //     ),
    //   ),
    // ),
  }
}
