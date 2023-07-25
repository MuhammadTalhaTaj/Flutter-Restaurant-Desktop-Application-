import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:intel_comm_flutter/components/IntelCommLogo.dart';
import 'package:intel_comm_flutter/constants/textStyles.dart';
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
              IntelCommLogo(
                fontSize: 50,
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
                    // color: Colors.purple,
                  ),
                  padding: EdgeInsets.all(8),
                  width: MediaQuery.of(context).size.width * .2,
                  child: Center(
                    child: Text("sign up",style: bodyTextStyle(context),),
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
                    // color: Colors.purple,
                  ),
                  padding: EdgeInsets.all(8),
                  width: MediaQuery.of(context).size.width * .2,
                  child: Center(
                    child: Text("sign in",style: bodyTextStyle(context),),
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
