import 'package:flutter/material.dart';
import 'package:nock/Components/colors.dart';
import 'package:nock/presentation/dashboard/view/dashboard.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
            buildInputField("Name", _nameController,
                keyboardType: TextInputType.name),
            const SizedBox(height: 20),
            buildInputField("Email", _emailController,
                keyboardType: TextInputType.emailAddress),
            const SizedBox(height: 20),
            buildInputField("Password", _passwordController,
                keyboardType: TextInputType.name),
            const Spacer(),
            buildLoginButton(),
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

  Widget buildInputField(String hintText, TextEditingController controller,
      {TextInputType keyboardType = TextInputType.text}) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: 60,
        decoration: BoxDecoration(
          color: const Color(0xFFF5F5F5),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              style: const TextStyle(
                color: blueColor,
              ),
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: const TextStyle(
                  fontSize: 14,
                  color: Color(0xFFB0B0B0),
                ),
                border: InputBorder.none,
              ),
              keyboardType: keyboardType,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildLoginButton() {
    return Padding(
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
                  builder: (context) => const Dashboard(),
                ),
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
              "Log In",
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
