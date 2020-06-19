import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'homeScreen.dart';

class Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              ClipRRect(
                child: Container(
                  height: 200,
                  color: Color(0xffFFE08E),
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  topLeft: Radius.zero,
                  bottomRight: Radius.circular(40),
                  topRight: Radius.zero,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 35, 15, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return HomeScreen();
                        }));
                      },
                      child: Icon(Icons.arrow_back),
                    ),
                    Icon(Icons.shopping_cart),
                  ],
                ),
              ),
              Positioned(
                child: Container(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(60, 50, 60, 10),
                      child: Image(image: AssetImage('assets/orange.png')),
                    )),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Orange - medium',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 34,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Text(
                  'Each (500g - 700g)',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Text(
                  'The orange is the fruit of various citrus species in the family Rutaceae; it primarily refers to Citrus × sinensis, which is also called sweet orange, to distinguish it from the related Citrus × aurantium, referred to as bitter orange.',
                  style: GoogleFonts.montserrat(
                      color: Colors.black38, fontSize: 18),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                      child: Container(
                          width: width * 0.20,
                          height: height * 0.10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.lightBlueAccent.withAlpha(25),
                          ),
                          child: Icon(
                            Icons.access_time,
                            size: 40,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(14, 8, 8, 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Delivery Time',
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w600,
                              fontSize: 19,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '25-35 Min',
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Colors.black26),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Rs. 50',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500,
                        fontSize: 34,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.black12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 2),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.remove,size: 20,),
                            Text('\t01\t',style: GoogleFonts.montserrat(fontSize: 20),),
                            Icon(Icons.add,size: 20,)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    MaterialButton(
                      onPressed: () {
                        print("Pressed.");
                      },
                      color: Color(0xffFFE08E),
                      elevation: 0,
                      minWidth: width * 0.85,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      height: height * 0.08,
                      textColor: Colors.black,
                      splashColor: Colors.white,
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Add to Cart',
                            style: GoogleFonts.montserrat(
                                fontSize: 22, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
