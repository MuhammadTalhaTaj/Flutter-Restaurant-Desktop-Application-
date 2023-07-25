import 'package:flutter/material.dart';
import 'package:intel_comm_flutter/constants/textStyles.dart';
import 'package:intel_comm_flutter/views/settings/components/appearanceScreen.dart';
import 'package:intel_comm_flutter/views/settings/components/languageAndRegionScreen.dart';
import 'package:intel_comm_flutter/views/settings/components/notificationScreen.dart';
import 'package:intel_comm_flutter/views/settings/components/profileScreen.dart';
import 'package:intel_comm_flutter/views/settings/components/settingOptionButton.dart';
import 'package:intel_comm_flutter/views/settings/components/switchRow.dart';

import '../../components/HomeDrawer.dart';
import '../../components/appbar.dart';
import 'components/checkoutSettings.dart';
import 'components/securityscreen.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  int currentIndex=1;


   @override
  Widget build(BuildContext context) {
     List screens=[ProfileScreen(),NotificationScreen(),AppearanceScreen(),CheckOutSettings(),SecurityScreen(),LanguageAndRegionScreen()];
    Size size = MediaQuery.of(context).size;
    final double screenHeight =
        MediaQuery.of(context).size.height - kToolbarHeight;

    ColorScheme clr = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: HomeAppBar(clr: clr,text1:"Settings",),
      drawer: HomeDrawer(
        clr: clr,
        selectedIndex: 6,
      ),
      body: Container(
        child: Row(
          children: [
            Container(
                padding: EdgeInsets.only(left: size.width * 0.04),
                color: clr.onPrimary,
                width: size.width * .35,
                height: double.infinity,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Settings',
                        style: headingTextStyle(context),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: size.width * 0.02),
                        color: clr.primaryContainer,
                        height: screenHeight * .7,
                        child: Column(
                          children: [
                            SettingOptionButton(
                              iconData: Icons.person_pin,
                              text: 'Profile',

                            onPressed: (){
                               Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen(),));
                            },
                            ),
                            SettingOptionButton(
                              iconData: Icons.mark_email_unread_sharp,
                              text: 'Notifications',
                              onPressed:  (){
                                setState(() {
                                  currentIndex=1;
                                });
                              },
                            ),
                            SettingOptionButton(
                              iconData: Icons.ac_unit,
                              text: 'Appearance',
                              onPressed: (){
                                setState(() {
                                  currentIndex=2;
                                });
                              },
                            ),
                            SettingOptionButton(
                              iconData: Icons.indeterminate_check_box,
                              text: 'Checkout Settings',
                              onPressed:  (){
                                setState(() {
                                  currentIndex=3;
                                });
                              },
                            ),
                            SettingOptionButton(
                              iconData: Icons.safety_check_rounded,
                              text: 'Security',
                              onPressed:  (){
                                setState(() {
                                  currentIndex=4;
                                });
                              },
                            ),
                            SettingOptionButton(
                              iconData: Icons.language,
                              text: 'Language & Region',
                              onPressed:  (){
                                setState(() {
                                  currentIndex=5;
                                });
                              },
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )),
            Container(
              height: double.infinity,
              width: size.width * .65,
              color: clr.onSecondary,
              child: Container(
                padding: EdgeInsets.all(size.width*0.05),
                child:screens[currentIndex],
              )
            )
          ],
        ),
      ),
    );
  }
}


