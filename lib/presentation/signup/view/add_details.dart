import 'package:flutter/material.dart';
import 'package:nock/Components/colors.dart';
import 'package:nock/presentation/dashboard/view/dashboard.dart';

class AddDetails extends StatefulWidget {
  const AddDetails({super.key});

  @override
  State<AddDetails> createState() => _AddDetailsState();
}

class _AddDetailsState extends State<AddDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.125,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
              child: Row(
                children: [
                  Image.asset(
                    "assets/Icon.png",
                    width: 50,
                    height: 50,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.075,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
              child: Text(
                "Hey,\nLogin Now",
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: "Product Sans",
                    fontWeight: FontWeight.normal,
                    color: Colors.black),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(25, 10, 0, 0),
              child: Row(
                children: [
                  Text(
                    "If you are new ask your ",
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: "Product Sans",
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                  Text(
                    "ask your seniors about ",
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: "Product Sans",
                        fontWeight: FontWeight.normal,
                        color: blueColor),
                  ),
                  Text(
                    "Nock ",
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: "Product Sans",
                        fontWeight: FontWeight.bold,
                        color: blueColor),
                  ),
                  Text(
                    "access",
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: "Product Sans",
                        fontWeight: FontWeight.normal,
                        color: blueColor),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.075,
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 60,
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: TextField(
                      style: TextStyle(
                        color: blueColor,
                      ),
                      decoration: InputDecoration(
                        hintText: "Name",
                        hintStyle: TextStyle(
                          fontSize: 14,
                          color: Color(0xFFB0B0B0),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 60,
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: TextField(
                      style: TextStyle(
                        color: blueColor,
                      ),
                      decoration: InputDecoration(
                        hintText: "Phone Number",
                        hintStyle: TextStyle(
                          fontSize: 14,
                          color: Color(0xFFB0B0B0),
                        ),
                        border: InputBorder.none,
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ),
              ),
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Dashboard()));
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: blueColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                    child: const Text(
                      "Log In",
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
      ),
    );
  }
}
