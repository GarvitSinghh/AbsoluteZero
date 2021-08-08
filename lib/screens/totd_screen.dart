import 'package:absolute_zero/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TipScreen extends StatelessWidget {
  const TipScreen({Key? key}) : super(key: key);

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
          "assets/images/totd_bg.svg",
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
                  "Sunday, August 8",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 15,
                    color: Color(0xFF7C7C7C),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "Today's Tip",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 45,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 37,
                ),
                Container(
                  height: 500,
                  width: 320,
                  decoration: BoxDecoration(
                    color: lightGreen,
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Bring your own\nBottle or Mug",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w700,
                            fontSize: 28,
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          "By bringing your own Bottle or Mug, You successfully help reduce the usage of disposable plastic glasses!\n\nReducing the usage of non-biodegradable plastic helps our environment!",
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(height: 40.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(" "),
                            SvgPicture.asset("assets/images/bottle_girl.svg"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
