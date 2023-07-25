import 'package:flutter/material.dart';
import 'package:intel_comm_flutter/constants/textStyles.dart';
import 'package:intel_comm_flutter/views/Bills/components/customtextfield.dart';
import 'package:intel_comm_flutter/views/settings/components/ScreensofprofileScreens/components/customtextfield.dart';
import 'package:intel_comm_flutter/views/settings/components/customElevatedButton.dart';

class PersonalInformationScreen extends StatefulWidget {
  const PersonalInformationScreen({Key? key}) : super(key: key);

  @override
  State<PersonalInformationScreen> createState() =>
      _PersonalInformationScreenState();
}

class _PersonalInformationScreenState extends State<PersonalInformationScreen> {
  String gender = 'male';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Personal Information',
            style: headingTextStyle(context),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 300,
                height: 50,
                child: RadioListTile(
                  title: Text("Male"),
                  value: "male",
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value.toString();
                    });
                  },
                ),
              ),
              //  SizedBox(width: 200,),
              Container(
                width: 300,
                height: 50,
                child: RadioListTile(
                  title: Text("Female"),
                  value: "female",
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value.toString();
                    });
                  },
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PICustomTextField(
                text: "Theresa",
                upperText: "First Name",
              ),
              PICustomTextField(
                text: "Web",
                upperText: "Last Name",
              ),
            ],
          ),
          PICustomTextField(
              text: "Theresaweb@gmail.com",
              upperText: "Email",
            ),


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PICustomTextField(text: "(302) 785-3156",upperText: "Phone number",),
              PICustomTextField(text: "09.05.1992",upperText: "Date of Birth",),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PICustomTextField(text: "New york",upperText: "Location",),
              PICustomTextField(text: "98756",upperText: "Postal Code",),
            ],
          ),


          CustomElevatedButton(),

        ],
      ),
    );
  }
}
