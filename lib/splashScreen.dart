import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

import 'homeScreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(children: [
        Expanded(
            flex: 2,
            child: Image.asset(
              'assets/splash2.png',
              scale: 5.0,
            )),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 0, 18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Order your favorite fruits.',
                  style: GoogleFonts.montserrat(
                      fontSize: 50, fontWeight: FontWeight.w600),
                ),
                Text(
                  'Eat fresh fruits and be healthy.',
                  style: GoogleFonts.montserrat(
                      fontSize: 20,
                      color: Colors.black26,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: height * 0.035,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    MaterialButton(
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return HomeScreen();
                        }));
                      },
                      color: Color(0xffFFCC3F),
                      elevation: 0,
                      minWidth: width * 0.4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.zero,
                              bottomRight: Radius.zero,
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20))),
                      height: height * 0.08,
                      textColor: Colors.black,
                      splashColor: Colors.white,
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Next',
                            style: GoogleFonts.montserrat(
                                fontSize: 22, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(width: width*0.05,),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
//                GestureDetector(
//                  child: Container(
//                    height: height * 0.05,
//                    width: width * 0.8,
//                    alignment: Alignment.center,
//                    child: Row(
//                      children: <Widget>[
//                        Text('Next',style: TextStyle(fontSize: 15,color: Colors.black),),
//                        Icon(Icons.arrow_forward_ios)
//                      ],
//                    ),
//                    color: Colors.yellow,
//                  ),
//                  onTap: () {
//                    Navigator.push(context,
//                        MaterialPageRoute(builder: (BuildContext context) {
//                      return HomeScreen();
//                    }));
//                  },
//                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
