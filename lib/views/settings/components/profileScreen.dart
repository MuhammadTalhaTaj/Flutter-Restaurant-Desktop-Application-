import 'package:flutter/material.dart';
import 'package:intel_comm_flutter/constants/textStyles.dart';
import 'package:intel_comm_flutter/views/settings/components/settingOptionButton.dart';

import '../../../components/HomeDrawer.dart';
import '../../../components/appbar.dart';
import 'ScreensofprofileScreens/LoginAndPassword.dart';
import 'ScreensofprofileScreens/personalinformationScreen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    List profileScreens=[PersonalInformationScreen(),LoginAndPassword()];
    ColorScheme clr=Theme.of(context).colorScheme;
    Size size = MediaQuery.of(context).size;
    final double screenHeight =
        MediaQuery.of(context).size.height - kToolbarHeight;
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
                padding: EdgeInsets.all(20),
                width: size.width* 0.4,
                height: double.infinity,
                color: Theme.of(context).colorScheme.primary,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Profile",style: headingTextStyle(),),
                    Container(
                      padding: EdgeInsets.all(15),
                      color: clr.onPrimaryContainer,
                      height: screenHeight*0.8,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child:
                            Column(children: [
                              Center(
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    CircleAvatar(
                                      radius: 60,
                                      backgroundColor: Colors.black,

                                    ),
                                    Positioned(
                                        bottom: 5,
                                        right: 5,
                                        child: Icon(Icons.edit_calendar_rounded)),
                                  ],
                                ),
                              ),

                              Center(child: Text("Theresa Web",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)),
                              Center(child: Text('Waiter',style: TextStyle(fontSize: 10,color: Colors.white70),)),
                            ],),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                            Column(children: [
                              Text('\$1,600',style: headingTextStyle(),),
                              Text('Earned',)
                            ],),
                            Column(children: [
                              Text('54',style: headingTextStyle(),),
                              Text('Orders',)
                            ],)
                          ],),
                          Container(
                            //   margin: EdgeInsets.only(left:size.width*0.03),
                            child: Column(
                              children: [
                                SettingOptionButton(
                                  iconData: Icons.person_pin,
                                  text: 'Personal Information',
                                  onPressed: (){
                                    setState(() {
                                      currentIndex=0;
                                    });
                                  },
                                ),
                                SettingOptionButton(
                                  iconData: Icons.lock,
                                  text: 'Login & Password',
                                  onPressed: (){
                                    setState(() {
                                      currentIndex=1;
                                    });
                                  },
                                ),
                                SettingOptionButton(
                                  iconData: Icons.logout,
                                  text: 'Log out',
                                  onPressed: (){},
                                ),
                              ],
                            ),
                          ),
                          SettingOptionButton(
                            iconData: Icons.delete,
                            text: 'Delete account',
                            onPressed: (){},
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(30),
                width: size.width * 0.6,
                height: double.infinity,
                color: Theme.of(context).colorScheme.secondaryContainer,
                child:profileScreens[currentIndex] ,
              ),
            ],
          ),
        ),
    );

  }
}
