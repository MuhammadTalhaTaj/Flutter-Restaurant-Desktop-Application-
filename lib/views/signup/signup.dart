import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intel_comm_flutter/services/user.dart';
import 'package:intel_comm_flutter/views/home/home.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  String? _username;
  String? _password;

  Future<void> signUpApiCall(String username, String password) async {
    User? customUser = context.read<User>();

    var url = Uri.parse('http://localhost:7213/createUser');
    var body = json.encode({
      "company_id": 111,
      "username": username,
      "password": password,
      "isOwner": 0,
      "created_by": "test",
      "email": "test@test.com",
      "phone": "0123456789",
      "country_code": "+92",
      "first_name": "English",
      "last_name": "Alphabets"
    });
    // var body = json.encode({'username': username, 'password': password});
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
        (Route<dynamic> route) => false,
      );

      //
    } else {
      //todo show error;
      print(newResponse);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Username'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                onSaved: (value) => _username = value,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                onSaved: (value) => _password = value,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      // TODO Submit data to server
                      signUpApiCall(_username!, _password!);
                    }
                  },
                  child: Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
