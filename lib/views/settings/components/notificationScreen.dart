import 'package:flutter/material.dart';
import 'package:intel_comm_flutter/views/settings/components/customElevatedButton.dart';
import 'package:intel_comm_flutter/views/settings/components/switchRow.dart';

import '../../../constants/textStyles.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {

  bool forAndroid = false;

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Notifications',
          style: headingTextStyle(context),
        ),
        Text(
          'Select the notifications you want to receive',
          style: bodyTextStyle(context),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
                width: 160,
                child: Text(
                  'Notification',
                  style: bodyTextStyle(context),
                )),
            Text(
              'Push',
              style: bodyTextStyle(context),
            ),
            Text(
              'Email',
              style: bodyTextStyle(context),
            ),
          ],
        ),
        Container(
          child: Column(
            children: [
              SwitchRow(forAndroid, (value){setState(() {
                forAndroid=value;
              });}, 'New message'),
              SwitchRow(forAndroid, (value){setState(() {
                forAndroid=value;
              });}, 'Weekly report'),
              SwitchRow(forAndroid, (value){setState(() {
                forAndroid=value;
              });}, 'Payment success'),
              SwitchRow(forAndroid, (value){setState(() {
                forAndroid=value;
              });}, 'Billing alert'),
              SwitchRow(forAndroid,(value){setState(() {
                forAndroid=value;
              });}, 'New inventation')
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        CustomElevatedButton(),
      ],
    );
  }
}
