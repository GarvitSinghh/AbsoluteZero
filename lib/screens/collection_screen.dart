import 'package:absolute_zero/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CompostCollectionScreen extends StatelessWidget {
  const CompostCollectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent,
      ),
    );

    return Stack(
      children: <Widget>[
        SvgPicture.asset(
          "assets/images/collection_bg.svg",
          height: screenHeight,
          width: screenWidth,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 75),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                        onTap: () => Navigator.pop(context),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset("assets/images/home.svg"),
                        ),
                      ),
                      InkWell(
                          onTap: () {},
                          child: SvgPicture.asset("assets/images/share.svg"))
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Compost Collection",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                  ),
                ),
                Text(
                  "Helping plants grow!",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Color(0xFF7C7C7C),
                  ),
                ),
                SizedBox(height: 30.0),
                Text(
                  "When organic waste is dumped in landfill, it undergoes anaerobic decomposition and generates methane..... When released into the atmosphere, methane is 25 times more potent a greenhouse gas than carbon dioxide.\n\nThis harms the Environment a lot.\n\nBut! The organic waste can be used to make compost which helps plants grow and reduces the carbon in the air!\n\nIf you do not have many plants at home, make sure to collect organic waste and our Volunteer will collect your organic waste and dump it into a compost pit! This compost will be later used for supporting afforestation projects!",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 30),
                InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                      color: defaultGreen,
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 25.0),
                      child: Text(
                        "OPT INTO ORGANIC WASTE COLLECTION",
                        style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
