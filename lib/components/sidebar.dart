import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:intel_comm_flutter/components/customButtons.dart';
import 'package:intel_comm_flutter/services/user.dart';
import 'package:provider/provider.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    // User? customUser = context.read<User>();
    Size size = MediaQuery.of(context).size;

    return Container(
      child: Column(
        children: [
          SideBarButton(),
          SideBarButton(),
          SideBarButton(),
        ],
      ),
    );
  }
}
