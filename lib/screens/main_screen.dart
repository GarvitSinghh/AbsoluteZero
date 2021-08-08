import 'package:absolute_zero/colors.dart';
import 'package:absolute_zero/screens/collection_screen.dart';
import 'package:absolute_zero/screens/support_screen.dart';
import 'package:absolute_zero/screens/totd_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

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
          "assets/images/main_bg.svg",
          height: screenHeight,
          width: screenWidth,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: <Widget>[
              SizedBox(
                height: 80.0,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 0, 0, 0),
                        child: Text(
                          "Absolute Zero",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w700,
                            fontSize: 42,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 0, 0, 0),
                        child: Text(
                          "Getting closer to Zero Emissions...",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 110,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70.0),
                child: Text(
                  "Your Dashboard",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20.0),
              dashboardItem(
                context,
                "assets/images/totd.svg",
                "Tip of the Day",
              ),
              SizedBox(height: 20.0),
              dashboardItem(context, "assets/images/collection.svg",
                  "Compost Collection"),
              SizedBox(height: 20.0),
              dashboardItem(
                context,
                "assets/images/support.svg",
                "Support Projects",
              ),
              SizedBox(height: 20.0),
              dashboardItem(
                context,
                "assets/images/volunteer.svg",
                "Volunteer",
              ),
            ],
          ),
        ),
      ],
    );
  }

  InkWell dashboardItem(context, String image, String text) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            if (text == "Tip of the Day")
              return TipScreen();
            else if (text == "Compost Collection")
              return CompostCollectionScreen();
            else if (text == "Support Projects")
              return SupportScreen();
            else
              return MainScreen();
          }),
        );
      },
      child: Container(
        height: 90.0,
        width: 330.0,
        decoration: BoxDecoration(
          color: lightGreen,
          borderRadius: BorderRadius.circular(17),
        ),
        child: Wrap(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Column(
                    children: [new SvgPicture.asset(image)],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                        child: Text(
                          text,
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            fontSize: 20.0,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
