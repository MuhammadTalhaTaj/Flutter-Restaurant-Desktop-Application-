import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:intel_comm_flutter/views/signin/signin.dart';
import 'package:intel_comm_flutter/views/signup/signup.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedTextKit(
                repeatForever: true,
                animatedTexts: [
                  TypewriterAnimatedText(
                    'intel_comm',
                    speed: Duration(
                      milliseconds: 100,
                    ),
                    textStyle: TextStyle(
                      fontSize: 50,
                    ),
                  ),
                  TypewriterAnimatedText(
                    'Intelligent Commerce',
                    speed: Duration(
                      milliseconds: 100,
                    ),
                    textStyle: TextStyle(
                      fontSize: 50,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpPage()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.purple,
                  ),
                  padding: EdgeInsets.all(8),
                  width: MediaQuery.of(context).size.width * .2,
                  child: Center(
                    child: Text("sign up"),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignIn()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.purple,
                  ),
                  padding: EdgeInsets.all(8),
                  width: MediaQuery.of(context).size.width * .2,
                  child: Center(
                    child: Text("sign in"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
