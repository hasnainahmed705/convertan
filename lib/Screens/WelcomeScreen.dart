import 'package:convertan_app/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    void NavigateToHomeScreen() {
      if (isChecked) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ));
      } else {
        toast(
            duration: Duration(seconds: 2),
            "Please accept our terms & conditions!");
      }
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  opacity: 40.0,
                  image: AssetImage(
                      "lib/assets/images/convertan_background.jpg"))),
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                "Welcome To",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 300,
                height: 300,
                child: Image(
                    fit: BoxFit.fill,
                    image: AssetImage("lib/assets/images/logo.png")),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                child: Text(
                  "Thank you for choosing our Convertan product. We're here to make your file conversion process quick and hassle-free.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 11,
                    wordSpacing: 2.0,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                child: Text(
                  "Unleash the potential, Effortlessly convert All files that you need for easy handling!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 11,
                    wordSpacing: 2.0,
                    color: Colors.cyan.shade200,
                  ),
                ),
              ),
              SizedBox(
                height: 100.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    value: isChecked,
                    checkColor: Colors.white,
                    fillColor: MaterialStateColor.resolveWith(
                        (states) => Colors.green),
                    onChanged: (value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  Text(
                    "* Accept our Terms & Conditions",
                    style: TextStyle(color: Colors.white, fontSize: 11),
                  )
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                width: 270,
                height: 35,
                child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.resolveWith((states) =>
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0))),
                        elevation:
                            MaterialStateProperty.resolveWith((states) => 5.0),
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => Colors.green)),
                    onPressed: () => NavigateToHomeScreen(),
                    child: Text(
                      "Finish",
                      style: TextStyle(color: Colors.white),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
