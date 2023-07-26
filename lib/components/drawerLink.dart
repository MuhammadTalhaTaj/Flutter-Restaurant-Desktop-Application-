import 'package:flutter/material.dart';
import 'package:intel_comm_flutter/components/gaps.dart';

class DrawerLink extends StatelessWidget {
  const DrawerLink(
      {super.key,
      required this.clr,
      required this.text,
      required this.icon,
      required this.isActive,
      required this.navigateFunc});

  final ColorScheme clr;
  final String text;
  final IconData icon;
  final bool isActive;
  final Function navigateFunc;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => navigateFunc(),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            width: constraints.maxHeight,
            padding: EdgeInsets.symmetric(
              horizontal: 5,
              vertical: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: isActive ? clr.primary : null,
            ),
            child: Row(
              children: [
                xgap(),
                Icon(
                  icon,
                  color: isActive ? clr.onPrimary : clr.secondary,
                ),
                xgap(),
                Expanded(
                  child: Text(
                    text,
                    style: TextStyle(
                      color: isActive ? clr.onPrimary : clr.secondary,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
