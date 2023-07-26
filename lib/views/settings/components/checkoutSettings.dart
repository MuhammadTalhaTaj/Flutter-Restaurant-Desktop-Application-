import 'package:flutter/material.dart';
import 'package:intel_comm_flutter/constants/textStyles.dart';
import 'package:intel_comm_flutter/views/settings/components/appearanceSwitchRow.dart';
import 'package:intel_comm_flutter/views/settings/components/customElevatedButton.dart';

class CheckOutSettings extends StatefulWidget {
  const CheckOutSettings({Key? key}) : super(key: key);

  @override
  State<CheckOutSettings> createState() => _CheckOutSettingsState();
}

class _CheckOutSettingsState extends State<CheckOutSettings> {
  bool forAndroid=false;
  @override
  Widget build(BuildContext context) {
    final double screenHeight =
        MediaQuery.of(context).size.height - kToolbarHeight;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

      Container(

        child: SizedBox(
          height: screenHeight*0.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Checkout Settings",style: headingTextStyle(context),),
              Text("Payment History",style: bodyTextStyle(context).copyWith(fontWeight: FontWeight.bold, fontSize: 17),),
              AppearanceRow(forAndroid: forAndroid, onPress: (value){setState(() {
                forAndroid=value;
              });}, text: "Save Payment History"),
              Text('Clear history',style: TextStyle(fontSize: 14,color: Colors.blueAccent),),
              Text("Payment Method",style: bodyTextStyle(context).copyWith(fontWeight: FontWeight.bold, fontSize: 17),),
              AppearanceRow(forAndroid: forAndroid, onPress: (value){setState(() {
                forAndroid=value;
              });}, text: "Bank Card"),
              AppearanceRow(forAndroid: forAndroid, onPress: (value){setState(() {
                forAndroid=value;
              });}, text: "Cash"),

            ],
          ),
        ),
      ),
      CustomElevatedButton(),
      
    ],);
  }
}
