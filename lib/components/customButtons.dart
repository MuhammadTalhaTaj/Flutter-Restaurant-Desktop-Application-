import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:intel_comm_flutter/services/user.dart';
import 'package:provider/provider.dart';

class SideBarButton extends StatefulWidget {
  const SideBarButton({super.key});

  @override
  State<SideBarButton> createState() => _SideBarButtonState();
}

class _SideBarButtonState extends State<SideBarButton> {
  @override
  Widget build(BuildContext context) {
    // User? customUser = context.read<User>();
    Size size = MediaQuery.of(context).size;

    return InkWell(
      child: Container(
        width: size.width > 900 ? size.width * .18 : null,
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.grey[700],
        ),
        child: Text("SideBarButton"),
      ),
    );
  }
}
