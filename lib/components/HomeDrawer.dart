import 'package:flutter/material.dart';
import 'package:intel_comm_flutter/components/IntelCommLogo.dart';
import 'package:intel_comm_flutter/components/drawerLink.dart';
import 'package:intel_comm_flutter/components/gaps.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({
    super.key,
    required this.clr,
  });

  final ColorScheme clr;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Column(
          children: [
            ygap(),

            IntelCommLogo(
              fontSize: 20,
            ),

            ygap(),

            //todo dashboard link
            DrawerLink(
              clr: clr,
              text: "Dashboard",
              icon: Icons.dashboard_rounded,
              isActive: true,
              navigateFunc: () {},
            ),

            ygap(),

            //todo food and drinks link
            DrawerLink(
              clr: clr,
              text: "Food & Drinks",
              icon: Icons.fastfood_rounded,
              isActive: false,
              navigateFunc: () {},
            ),

            ygap(),

            //todo messages link
            DrawerLink(
              clr: clr,
              text: "Messages",
              icon: Icons.message,
              isActive: false,
              navigateFunc: () {},
            ),

            ygap(),

            //todo bills link
            DrawerLink(
              clr: clr,
              text: "Dashboard",
              icon: Icons.calculate_sharp,
              isActive: false,
              navigateFunc: () {},
            ),

            ygap(),

            //todo notifications

            DrawerLink(
              clr: clr,
              text: "Notifications",
              icon: Icons.notifications_active,
              isActive: false,
              navigateFunc: () {},
            ),

            ygap(),

            //todo cart

            DrawerLink(
              clr: clr,
              text: "Cart",
              icon: Icons.notifications_active,
              isActive: false,
              navigateFunc: () {},
            ),

            ygap(),

            //todo support

            DrawerLink(
              clr: clr,
              text: "Support",
              icon: Icons.support_agent_outlined,
              isActive: false,
              navigateFunc: () {},
            ),

            //todo profile container
          ],
        ),
      ),
    );
  }
}
