import 'package:flutter/material.dart';

import '../../../../constants/textStyles.dart';
import '../customElevatedButton.dart';
import 'components/customtextfield.dart';
import 'components/socialCustomelevatedbutton.dart';

class LoginAndPassword extends StatefulWidget {
  const LoginAndPassword({Key? key}) : super(key: key);

  @override
  State<LoginAndPassword> createState() => _LoginAndPasswordState();
}

class _LoginAndPasswordState extends State<LoginAndPassword> {
  @override
  Widget build(BuildContext context) {
    ColorScheme clr=Theme.of(context).colorScheme;
    Size size = MediaQuery.of(context).size;
    final double screenHeight =
        MediaQuery.of(context).size.height - kToolbarHeight;
    return Container(

      child: Column(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: screenHeight*0.6,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Login & Password',
                  style: headingTextStyle(context),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PICustomTextField(
                      text: "TheresaWebbb878",
                      upperText: "User name",
                    ),
                    PICustomTextField(
                      text: "TH-809808_df",
                      upperText: "Your Sales ID number",
                    ),
                  ],
                ),



                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PICustomTextField(text: "",upperText: "Password",),
                    PICustomTextField(text: "",upperText: "Change Password",),
                  ],
                ),

                Text('Sign in with social networks',style: headingTextStyle(context),),
                Text('Link your social account to sign in quickly next time'),

                ConstrainedBox(
                  constraints: BoxConstraints(
                      maxWidth: 400
                  ),
                  child: Container(

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SocialCustomElevatedButton(icon: Icons.facebook,text: 'Sign up with Facebook',),

                        SizedBox(
                          width: 5,
                        ),
                        SocialCustomElevatedButton(icon: Icons.g_mobiledata_rounded,text: 'Sign up with Google',),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),




          CustomElevatedButton(),

        ],
      ),
    );
  }
}
