import 'package:flutter/material.dart';

class User extends ChangeNotifier {
  String? username;
  int? user_id;
  bool? isSubscribed;
  bool? isShopifyCredentialsAdded;

  User();

  void notifyUserListeners() {}

  Future<void> createUser() async {}

  Future<void> setUser(String username, int user_id, bool isSubscribed) async {
    this.username = username;
    this.user_id = user_id;
    this.isSubscribed = isSubscribed;
    print(
        "username: $username , user_id: $user_id , isSubscribed: $isSubscribed");
  }
}
