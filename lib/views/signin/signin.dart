import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intel_comm_flutter/services/user.dart';
import 'package:intel_comm_flutter/views/home/home.dart';
import 'package:provider/provider.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  Future<String?> SignInApiCall(String username, String password) async {
    User? customUser = context.read<User>();
    print("$username $password");
    var url = Uri.parse('http://localhost:7213/loginUser');
    var body = json.encode({'username': username, 'password': password});
    var response = await http.post(
      url,
      body: body,
      headers: {"Content-Type": "application/json"},
    );

    var newResponse = jsonDecode(response.body.toString());

    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    if (response.statusCode == 200) {
      customUser.setUser(
          username, newResponse["user_id"], newResponse["isSubscribed"]);

      //navigate to home and remove all previous routes
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => Home()),
          (Route<dynamic> route) => false);

      //
    } else {
      //todo show error;
      print(newResponse);
    }

    return "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          // color: Colors.grey[600],
        ),
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .35,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: usernameController,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Username',
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .1,
            ),
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Password',
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .1,
            ),
            InkWell(
              onTap: () {
                SignInApiCall(usernameController.text, passwordController.text);
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.purple,
                ),
                padding: EdgeInsets.all(8),
                width: MediaQuery.of(context).size.width * .2,
                child: Center(
                  child: Text("Sign In"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
