import 'package:flutter/material.dart';
import 'package:intel_comm_flutter/components/IntelCommLogo.dart';
import 'package:intel_comm_flutter/components/drawerLink.dart';
import 'package:intel_comm_flutter/components/gaps.dart';
import 'package:intel_comm_flutter/views/addToCart/addtocart.dart';
import 'package:intel_comm_flutter/views/cart/cart.dart';
import 'package:intel_comm_flutter/views/foodAndDrinkCategories/foodAndDrinkCategories.dart';
import 'package:intel_comm_flutter/views/home/home.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../views/Bills/bills.dart';
import '../views/settings/settings.dart';


class HomeDrawer extends ConsumerStatefulWidget {
  const HomeDrawer({
    super.key,
    required this.clr,
    required this.selectedIndex,
  });

  final ColorScheme clr;
  final selectedIndex;

  @override
  ConsumerState<HomeDrawer> createState() => _HomeDrawerState();
}

class _HomeDrawerState extends ConsumerState<HomeDrawer> {


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
              clr: widget.clr,
              text: "Dashboard",
              icon: Icons.dashboard_rounded,
              isActive: widget.selectedIndex == 0,
              navigateFunc: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home(),));
              },
            ),

            ygap(),

            //todo food and drinks link
            DrawerLink(
              clr: widget.clr,
              text: "Food & Drinks",
              icon: Icons.fastfood_rounded,
              isActive: widget.selectedIndex == 1,
              navigateFunc: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FoodAndDrinkCategories()),
                );
              },
            ),

            ygap(),

            //todo messages link
            DrawerLink(
              clr: widget.clr,
              text: "Messages",
              icon: Icons.message,
              isActive: widget.selectedIndex == 2,
              navigateFunc: () {

              },
            ),

            ygap(),

            //todo bills link
            DrawerLink(
              clr: widget.clr,
              text: "Bills",
              icon: Icons.note_alt_rounded,
              isActive: widget.selectedIndex == 3,
              navigateFunc: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Bills(),));
              },
            ),

            ygap(),

            //todo notifications

            DrawerLink(
              clr: widget.clr,
              text: "Notifications",
              icon: Icons.notifications_active,
              isActive: widget.selectedIndex == 4,
              navigateFunc: () {

              },
            ),

            ygap(),

            //todo cart

            DrawerLink(
                clr: widget.clr,
                text: "Cart",
                icon: Icons.notifications_active,
                isActive: widget.selectedIndex == 5,
                navigateFunc: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddToCart()),
                  );
                }
            ),

            ygap(),
            DrawerLink(
              clr: widget.clr,
              text: "Settings",
              icon: Icons.settings_suggest_outlined,
              isActive: widget.selectedIndex == 6,
              navigateFunc: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Settings(),));
              },
            ),
            ygap(),
            //todo support

            DrawerLink(
              clr: widget.clr,
              text: "Support",
              icon: Icons.support_agent_outlined,
              isActive: widget.selectedIndex == 7,
              navigateFunc: () {


              },
            ),

            //todo profile container
          ],
        ),
      ),
    );
  }
}
