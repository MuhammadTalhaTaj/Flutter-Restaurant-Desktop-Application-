import 'package:flutter/material.dart';
import 'package:intel_comm_flutter/constants/textStyles.dart';
import 'package:intel_comm_flutter/views/settings/components/appearanceSwitchRow.dart';
import 'package:intel_comm_flutter/views/settings/components/customElevatedButton.dart';
import 'package:intel_comm_flutter/views/settings/components/incrementDecrementButton.dart';

class AppearanceScreen extends StatefulWidget {
  bool forAndroid = false;

  AppearanceScreen({Key? key}) : super(key: key);

  @override
  State<AppearanceScreen> createState() => _AppearanceScreenState();
}

class _AppearanceScreenState extends State<AppearanceScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final double screenHeight =
        MediaQuery.of(context).size.height - kToolbarHeight;

    ColorScheme clr = Theme.of(context).colorScheme;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: screenHeight*0.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Appearance",
                  style: headingTextStyle(),
                ),
                Text(
                  'Theme',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                AppearanceRow(
                  forAndroid: widget.forAndroid,
                  onPress: (value) {
                    setState(() => widget.forAndroid = value);
                  },
                  text: "Light",
                ),
                AppearanceRow(
                  forAndroid: widget.forAndroid,
                  onPress: (value) {
                    setState(() => widget.forAndroid = value);
                  },
                  text: "Dark",
                ),

                Text('Size',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  Text('Font Size',style: TextStyle(fontSize: 14)),
                  SizedBox(
                    height: 35,
                      width: 100,
                      child: NumberTextField()),

                ],),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Card\'s Size',style: TextStyle(fontSize: 14)),
                    SizedBox(
                        height: 35,
                        width: 100,
                        child: NumberTextField()),

                  ],),

              ],
            ),
          ),
          CustomElevatedButton(),
        ],
      ),
    );
  }
}
