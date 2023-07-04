import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intel_comm_flutter/components/IntelCommLogo.dart';
import 'package:intel_comm_flutter/components/gaps.dart';
import 'package:intel_comm_flutter/views/home/home.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ColorScheme clr = Theme.of(context).colorScheme;
    return Scaffold(
      body: Container(
        child: Wrap(
          children: [
            Container(
              width: size.width / 2,
              height: size.height,
              child: Center(
                child: IntelCommLogo(
                  fontSize: 50,
                ),
              ),
            ),
            Container(
              width: size.width / 2,
              height: size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // todo heading welcome
                  Container(
                    width: size.width / 4,
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Welcome",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 38,
                                color: clr.primary,
                              ),
                            ),
                            Text(
                              "Please sign in to continue",
                              style: TextStyle(
                                fontWeight: FontWeight.w100,
                                fontSize: 12,
                                color: clr.outline,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // todo username inputfield
                  Container(
                    width: size.width / 4,
                    child: TextField(
                      controller: usernameController,
                      decoration: InputDecoration(
                        hintText: "Username or Email",
                      ),
                    ),
                  ),

                  // todo password input field
                  Container(
                    width: size.width / 4,
                    child: TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        hintText: "Password",
                      ),
                    ),
                  ),

                  ygap(),

                  //todo sign in button
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    ),
                    child: Container(
                      width: size.width / 4,
                      height: 40,
                      decoration: BoxDecoration(
                          color: clr.primaryContainer,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            color: clr.onPrimaryContainer,
                          ),
                        ),
                      ),
                    ),
                  ),

                  ygap(),

                  //todo or
                  Text(
                    "or",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),

                  ygap(),

                  //todo google sign in feature

                  Container(
                    width: size.width / 6,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: clr.secondaryContainer,
                    ),
                    child: Center(
                      child: Text(
                        "Sign in with Google",
                        style: TextStyle(
                            color: Theme.of(context)
                                .colorScheme
                                .onSecondaryContainer),
                      ),
                    ),
                  ),

                  ygap(),

                  //todo forgot password
                  Text(
                    "Forgot Password",
                    style: TextStyle(color: clr.primary),
                  ),

                  ygap(),

                  //todo redirect to sign up
                  Text(
                    "Don't have an account? Go to Sign up",
                    style: TextStyle(color: clr.outline, fontSize: 12),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
