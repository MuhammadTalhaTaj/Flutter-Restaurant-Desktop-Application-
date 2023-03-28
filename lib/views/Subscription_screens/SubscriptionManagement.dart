import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intel_comm_flutter/services/user.dart';
import 'package:intel_comm_flutter/views/home/home.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'dart:math';

class SubscriptionManagement extends StatefulWidget {
  const SubscriptionManagement({super.key});

  @override
  State<SubscriptionManagement> createState() => _SubscriptionManagementState();
}

class _SubscriptionManagementState extends State<SubscriptionManagement> {
  Random random = new Random();

  bool isError = false;

  //
  Future<void> buySubscription(
      int months_paid_for, String username, String password) async {
    User? customUser = context.read<User>();

    var url = Uri.parse('http://localhost:7213/userBuySubscription');

    var body = json.encode({
      'user_id': customUser.user_id,
      'months_paid_for': months_paid_for,
      'username': username,
      'password': password
    });

    var response = await http.post(
      url,
      body: body,
      headers: {"Content-Type": "application/json"},
    );

    var newResponse = jsonDecode(response.body.toString());

    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    if (response.statusCode == 200) {
      customUser.isSubscribed = newResponse["isSubscribeSuccessful"];

      print(newResponse["response"]);

      Navigator.pop(context);

      setState(() {
        isError = false;
      });

      //
    } else {
      //todo show error;
      print(newResponse);
      setState(() {
        isError = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    User? customUser = context.read<User>();

    return Scaffold(
      appBar: AppBar(
        title: Text("Subscription Setting"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              customUser.isSubscribed == false
                  ? ElevatedButton(
                      onPressed: () async {
                        showModalBottomSheet<void>(
                          context: context,
                          builder: (BuildContext context) {
                            final usernameController = TextEditingController();
                            final passwordController = TextEditingController();

                            return SizedBox(
                              height: 200,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    TextFormField(
                                      controller: usernameController,
                                      decoration: InputDecoration(
                                        border: UnderlineInputBorder(),
                                        labelText: 'Username',
                                      ),
                                    ),
                                    TextFormField(
                                      controller: passwordController,
                                      decoration: InputDecoration(
                                        border: UnderlineInputBorder(),
                                        labelText: 'Password',
                                      ),
                                    ),
                                    isError
                                        ? Text(
                                            "error",
                                            style: TextStyle(color: Colors.red),
                                          )
                                        : SizedBox(),
                                    ElevatedButton(
                                      onPressed: () async {
                                        print("Buy Subscription");
                                        await buySubscription(
                                            random.nextInt(10),
                                            usernameController.text,
                                            passwordController.text);
                                      },
                                      child: Text("Sign In"),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: Text("Buy Subscription"),
                    )
                  : SizedBox()
            ],
          ),
        ),
      ),
    );
    ;
  }
}
