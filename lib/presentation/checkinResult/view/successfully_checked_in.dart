import 'package:flutter/material.dart';
import 'package:nock/Components/colors.dart';
import 'package:nock/presentation/dashboard/view/dashboard.dart';

class SuccessfullyCheckedIn extends StatelessWidget {
  const SuccessfullyCheckedIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(8),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
          ),
          Image.asset(
            "assets/success.png",
            width: 275,
            height: 275,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "You Checked In",
            style: TextStyle(
                fontSize: 30,
                fontFamily: "Product Sans",
                fontWeight: FontWeight.normal,
                color: Colors.black),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Successfully",
            style: TextStyle(
                fontSize: 30,
                fontFamily: "Product Sans",
                fontWeight: FontWeight.normal,
                color: blueColor),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 25, 8, 145),
            child: Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 60,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Dashboard()),
                      (Route<dynamic> route) => false,
                    );
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: blueColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  child: const Text(
                    "Done",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: "Product Sans",
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
