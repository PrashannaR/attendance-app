import 'package:flutter/material.dart';
import 'package:nock/Components/colors.dart';
import 'package:nock/presentation/signup/view/add_details.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.125,
            ),
            Image.asset("assets/introduction.png"),
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 30, 0, 0),
              child: Row(
                children: [
                  Text(
                    "Welcome to ",
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: "Product Sans",
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                  Text(
                    "Nock",
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: "Product Sans",
                        fontWeight: FontWeight.normal,
                        color: blueColor),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 10, 0, 0),
              child: Text(
                "Smart Attendance Tracking App",
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Product Sans",
                    fontWeight: FontWeight.normal,
                    color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 60, 8, 0),
              child: Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 60,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AddDetails()),
                      );
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: blueColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Get Started",
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: "Product Sans",
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Image.asset(
                          "assets/arrow.png",
                          height: 20,
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        "Made with ❤️ By ",
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: "Product Sans",
                            fontWeight: FontWeight.normal,
                            color: Colors.black),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            "G",
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: "Product Sans",
                                fontWeight: FontWeight.normal,
                                color: gdscBlue),
                          ),
                          Text(
                            "D",
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: "Product Sans",
                                fontWeight: FontWeight.normal,
                                color: gdscYellow),
                          ),
                          Text(
                            "S",
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: "Product Sans",
                                fontWeight: FontWeight.normal,
                                color: gdscRed),
                          ),
                          Text(
                            "C",
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: "Product Sans",
                                fontWeight: FontWeight.normal,
                                color: gdscGreen),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
