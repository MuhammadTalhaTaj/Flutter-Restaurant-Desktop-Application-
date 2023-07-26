import 'package:flutter/material.dart';
import 'package:intel_comm_flutter/components/IconWidgets.dart';
import 'package:intel_comm_flutter/components/gaps.dart';
import 'package:intel_comm_flutter/constants/textStyles.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({
    super.key,
    required this.clr, required this.text1, this.text2,
  });
  final String text1;
  final String? text2;

  final ColorScheme clr;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Expanded(
            flex: 7,
            child: Row(
              children: [
                //todo back button
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: clr.onPrimary,
                      borderRadius: BorderRadius.circular(5)),
                  child: InkWell(
                    onTap: (){Navigator.of(context).pop();},
                    child: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: clr.primary,
                    ),
                  ),
                ),

                xgap(),

                //todo breadcrumbs
                Row(
                  children: [
                    Text(
                      text1,
                      style: bodyTextStyle(context),
                    ),
                    xgap(),

                    text2!=null?Icon(Icons.arrow_forward_ios_rounded):Container(),

                    xgap(),
                    text2!=null?Text(
                      text2!,
                      style: bodyTextStyle(context),
                    ):Container(),
                  ],
                ),

                xgap(),
              ],
            ),
          ),

          //todo search bar
          Expanded(
            flex: 2,
            child: Row(
              children: [
                //todo notification icon
                MediumIconWidget(
                  icon: Icons.notifications_active_rounded,
                ),

                xgap(),

                //todo timer icon
                MediumIconWidget(icon: Icons.timelapse_outlined),

                xgap(),

                //todo textfield search
                Expanded(
                  child: LayoutBuilder(builder: (context, parentConstraints) {
                    return Container(
                      // width: parentConstraints.maxWidth * .2,
                      child: TextField(
                        decoration: InputDecoration(hintText: "Search..."),
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
