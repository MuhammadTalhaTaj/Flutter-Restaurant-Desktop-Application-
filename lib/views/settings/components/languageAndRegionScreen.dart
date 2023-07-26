import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:intel_comm_flutter/views/settings/components/appearanceSwitchRow.dart';
import 'package:language_picker/language_picker_dropdown.dart';
import 'package:language_picker/languages.dart';

import '../../../constants/textStyles.dart';
import 'customElevatedButton.dart';

class LanguageAndRegionScreen extends StatefulWidget {
  const LanguageAndRegionScreen({Key? key}) : super(key: key);

  @override
  State<LanguageAndRegionScreen> createState() =>
      _LanguageAndRegionScreenState();
}

class _LanguageAndRegionScreenState extends State<LanguageAndRegionScreen> {
  var countryName = null;
  var languageName = null;
  bool forAndroid = false;
  Text text1=Text("Predictive text suggestions",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),);

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
                  //
                  "Language & Region",
                  style: headingTextStyle(context),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Choose region",
                      style:
                      bodyTextStyle(context).copyWith(fontWeight: FontWeight.w200, fontSize: 10),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Container(

                      height: 40,
                      width: 200,
                      decoration: BoxDecoration(
                          color: iconColor(context),
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(width: 1)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          countryName != null
                              ? Text(countryName)
                              : Text('Pakistan'),
                          InkWell(
                            onTap: () {
                              showCountryPicker(
                                  context: context,
                                  onSelect: (Country _country) {
                                    setState(() {
                                      countryName = _country.name;
                                    });
                                  });
                            },
                            child: Icon(Icons.arrow_drop_down_outlined),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Choose language",
                      style:
                      bodyTextStyle(context).copyWith(fontWeight: FontWeight.w200, fontSize: 10),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Container(
                      height: 40,
                      width: 200,
                      decoration: BoxDecoration(
                        color: iconColor(context),
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(width: 1)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          //
                          languageName != null
                              ? Text(languageName)
                              : Text('English'),
                          InkWell(
                            onTap: () {
                              //
                              LanguagePickerDropdown(
                                  initialValue: Languages.english,
                                  onValuePicked: (Language language) {
                                    setState(() {
                                      languageName = language.name;
                                    });
                                  });
                            },
                            child: Icon(Icons.arrow_drop_down_outlined),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                AppearanceRow(
                    forAndroid: forAndroid,
                    onPress: (value) {
                      setState(() {
                        forAndroid = value;
                      });
                    },
                    text: "Predictive text suggestions"),
              ],
            ),
          ),
        ),
        CustomElevatedButton(),
      ],
    );
  }
}
