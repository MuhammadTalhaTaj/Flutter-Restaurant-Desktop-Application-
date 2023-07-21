import 'package:flutter/material.dart';
import 'package:intel_comm_flutter/constants/textStyles.dart';
import 'package:intel_comm_flutter/views/settings/components/notificationScreen.dart';
import 'package:intel_comm_flutter/views/settings/components/settingOptionButton.dart';
import 'package:intel_comm_flutter/views/settings/components/switchRow.dart';

import '../../components/HomeDrawer.dart';
import '../../components/appbar.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final double screenHeight =
        MediaQuery.of(context).size.height - kToolbarHeight;

    ColorScheme clr = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: HomeAppBar(clr: clr),
      drawer: HomeDrawer(
        clr: clr,
        selectedIndex: 6,
      ),
      body: Container(
        child: Row(
          children: [
            Container(
                padding: EdgeInsets.only(left: size.width * 0.04),
                color: clr.primary,
                width: size.width * .35,
                height: double.infinity,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Settings',
                        style: headingTextStyle(),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: size.width * 0.02),
                        color: clr.onPrimaryContainer,
                        height: screenHeight * .7,
                        child: Column(
                          children: [
                            SettingOptionButton(
                              iconData: Icons.person_pin,
                              text: 'Profile',
                            ),
                            SettingOptionButton(
                              iconData: Icons.mark_email_unread_sharp,
                              text: 'Notifications',
                            ),
                            SettingOptionButton(
                              iconData: Icons.ac_unit,
                              text: 'Appearance',
                            ),
                            SettingOptionButton(
                              iconData: Icons.indeterminate_check_box,
                              text: 'Checkout Settings',
                            ),
                            SettingOptionButton(
                              iconData: Icons.safety_check_rounded,
                              text: 'Security',
                            ),
                            SettingOptionButton(
                              iconData: Icons.language,
                              text: 'Language & Region',
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
              color: clr.secondaryContainer,
              child: Container(
                padding: EdgeInsets.all(size.width*0.05),
                child:NotificationScreen(),
              )
            )
          ],
        ),
      ),
    );
  }
}


