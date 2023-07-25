import 'package:flutter/material.dart';

import '../../../constants/textStyles.dart';
import 'customElevatedButton.dart';

class SecurityScreen extends StatefulWidget {
  const SecurityScreen({Key? key}) : super(key: key);

  @override
  State<SecurityScreen> createState() => _SecurityScreenState();
}

class _SecurityScreenState extends State<SecurityScreen> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight =
        MediaQuery.of(context).size.height - kToolbarHeight;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: SizedBox(
            height: screenHeight * 0.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Security",
                  style: headingTextStyle(context),
                ),
                Row(
                  children: [
                    Icon(Icons.notifications_sharp,color:iconColor(context),),
                    SizedBox(width: 8,),
                    Text(
                      "Security alert",
                      style: bodyTextStyle(context).copyWith(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ],
                ),
                Text('You will get alerts when someone tries logging in to your account form an unknown device.',style: bodyTextStyle(context),),


                Text(
                  "Where you\'re logged in",
                  style: bodyTextStyle(context).copyWith(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                Row(
                  children: [
                    Icon(Icons.computer,color: iconColor(context),),
                    SizedBox(width: 8,),
                    Text(
                      "Mac . Ny.United States",style: bodyTextStyle(context),
                    ),
                  ],
                ),
                Text("Active Now",style: TextStyle(color: Colors.blue),),
                Row(
                  children: [
                    Icon(Icons.phone_android_sharp,color:iconColor(context),),
                    SizedBox(width: 8,),
                    Text(
                      "iPhone . Ny.United States,",style: bodyTextStyle(context),
                    ),
                  ],
                ),




              ],
            ),
          ),
        ),


        CustomElevatedButton(),
      ],
    );
  }
}
