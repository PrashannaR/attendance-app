import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nock/Components/colors.dart';
import 'package:nock/presentation/checkinResult/view/successfully_checked_in.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('dd MMM yyyy').format(DateTime.now());

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(8),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome 👋",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Product Sans",
                            fontWeight: FontWeight.normal,
                            color: Colors.black),
                      ),
                      Text(
                        "User Name",
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: "Product Sans",
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 25, 0),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF3F3F3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/calendar.png",
                      width: 15,
                      height: 15,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      formattedDate,
                      style: const TextStyle(
                          fontSize: 14,
                          fontFamily: "Product Sans",
                          fontWeight: FontWeight.normal,
                          color: blueColor),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                color: pinkish,
                borderRadius: BorderRadius.circular(0),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                "Today's Meeting Details",
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Product Sans",
                    fontWeight: FontWeight.normal,
                    color: blueColor),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/Icon.png",
                        width: 40,
                        height: 40,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Check In Time:",
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: "Product Sans",
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          ),
                          Text(
                            "09:00Pm-09:45Pm",
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: "Product Sans",
                                fontWeight: FontWeight.normal,
                                color: blueColor),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/location.png",
                        width: 40,
                        height: 40,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Location:",
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: "Product Sans",
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          ),
                          Text(
                            "Foodys, VIT",
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: "Product Sans",
                                fontWeight: FontWeight.normal,
                                color: blueColor),
                          )
                        ],
                      )
                    ],
                  ),
                ],
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
                              builder: (context) =>
                                  const SuccessfullyCheckedIn()));
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: blueColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                    child: const Text(
                      "Check In",
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
