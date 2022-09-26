import 'package:fixepoch/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../theme/color_theme.dart';
import '../../widgets/bottom_nav.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorTheme.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // aligned center
        children: [
          const SizedBox(
            height: 80,
          ),
          Text(
            'FixEpoch', // sign up text
            style: textTheme.headline1.copyWith(
                color: ColorTheme.bgColor,
                fontSize: 39,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 50.0,
              horizontal: 20,
            ),
            child: TextField(
              keyboardType: TextInputType.phone,
              controller: textController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 0)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.black45)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(
                      color: Colors.black12,
                    ),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 17, vertical: 17),
                  filled: true,
                  prefixIcon: Icon(Icons.person),
                  fillColor: Color(0xFFF2F2F2),
                  hintText: "Enter Username",
                  hintStyle:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.w300)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 5.0,
              horizontal: 20,
            ),
            child: TextField(
              keyboardType: TextInputType.phone,
              controller: textController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 0)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.black45)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(
                      color: Colors.black12,
                    ),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 17, vertical: 17),
                  filled: true,
                  prefixIcon: Icon(Icons.lock_rounded),
                  fillColor: Color(0xFFF2F2F2),
                  hintText: "EnterPassword",
                  hintStyle:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.w300)),
            ),
          ),
          //Padding(padding: EdgeInsets.all(100)),
          const SizedBox(
            height: 45,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Forgot Password?', // sub title of sign up
                textAlign: TextAlign.center,
                style: textTheme.headline2.copyWith(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'click here', // sub title of sign up
                textAlign: TextAlign.center,
                style: textTheme.headline2.copyWith(
                    fontSize: 15,
                    color: ColorTheme.button,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const SizedBox(
            height: 95,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8, bottom: 0),
            child: Container(
              width: double.infinity,
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 2),
              child: TextButton(
                style: TextButton.styleFrom(
                    // padding: const EdgeInsets.symmetric(vertical: 20.0),
                    primary: Colors.white,
                    backgroundColor: ColorTheme.button,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    )),
                onPressed: () {
                  Get.to(const BottomNav());
                },
                child: const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
