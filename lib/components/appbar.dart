import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:intel_comm_flutter/services/user.dart';
import 'package:provider/provider.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.maxFinite, 80);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    User? customUser = context.read<User>();
    Size size = MediaQuery.of(context).size;

    //
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 180,
            // color: Colors.red[100],
            child: AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                TypewriterAnimatedText(
                  'intel_comm',
                  speed: Duration(
                    milliseconds: 100,
                  ),
                  textStyle: TextStyle(
                      // fontSize: 50,
                      ),
                ),
                TypewriterAnimatedText(
                  'Intelligent Commerce',
                  speed: Duration(
                    milliseconds: 100,
                  ),
                  textStyle: TextStyle(
                      // fontSize: 50,
                      ),
                ),
              ],
            ),
          ),
          Text(
            size.width.toString() + "*" + size.height.toString(),
          ),

          //user container
          Container(
            width: 180,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  child: Text("A"),
                ),
                Text("Saud"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
