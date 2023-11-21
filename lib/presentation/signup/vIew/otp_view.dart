import 'package:flutter/material.dart';
import 'package:nock/Components/colors.dart';

class OtpView extends StatefulWidget {
  const OtpView({super.key});

  @override
  State<OtpView> createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> {
  final List<TextEditingController> controllers =
      List.generate(6, (index) => TextEditingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.125),
            buildLogo(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.075),
            buildWelcomeText(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.075),
            buildOtpView(),
            const Spacer(),
            buildOTPVerifyButton(),
          ],
        ),
      ),
    );
  }

  Widget buildLogo() {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Row(
        children: [
          Image.asset(
            "assets/Icon.png",
            width: 50,
            height: 50,
          ),
          const SizedBox(width: 10),
          const Text(
            "Nock",
            style: TextStyle(
              fontSize: 30,
              fontFamily: "Product Sans",
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildWelcomeText() {
    return const Padding(
      padding: EdgeInsets.only(left: 25),
      child: Text(
        "Hey,\nSign Up Now",
        style: TextStyle(
          fontSize: 30,
          fontFamily: "Product Sans",
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget buildOtpView() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(
        6,
        (index) => buildDigitField(controllers[index], index),
      ),
    );
  }

  Widget buildDigitField(TextEditingController controller, int index) {
    return SizedBox(
      width: 40,
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        maxLength: 1,
        onChanged: (value) {
          if (value.isNotEmpty && index < controllers.length - 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        decoration: const InputDecoration(
          counter: Offstage(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.blue),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.blue),
          ),
        ),
      ),
    );
  }

  Widget buildOTPVerifyButton() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 25, 8, 145),
      child: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          height: 60,
          child: TextButton(
            onPressed: () {
              // Navigator.pushAndRemoveUntil(
              //   context,
              //   MaterialPageRoute(
              //     //builder: (context) => const Dashboard(),
              //     builder: (context) => const OtpView(),
              //   ),
              //   (Route<dynamic> route) => false,
              // );
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: blueColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
            ),
            child: const Text(
              "Verify OTP",
              style: TextStyle(
                fontSize: 18,
                fontFamily: "Product Sans",
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
