import 'package:flutter/material.dart';

import '../../../constants/textStyles.dart';

class OrderCardView extends StatelessWidget {
  const OrderCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Theme.of(context)
                .colorScheme
                .primaryContainer,
            borderRadius: BorderRadius.circular(15)
        ),
        width: double.infinity,
        child: Column(
          children: [
            Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Order #35',
                      style: headingTextStyle(context)
                          .copyWith(fontSize: 20),
                    ),
                    SizedBox(width: 15),
                    Text(
                      'Active',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                Text(
                  '\$42',
                  style: headingTextStyle(context).copyWith(
                      fontSize: 20, color: Colors.white70),
                )
              ],
            ),
            Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Table 2B',
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(width: 7),
                    Text(
                      '-',
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(width: 7),
                    Text(
                      '2 guests',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                Text(
                  '14:25',
                  style: TextStyle(fontSize: 14),
                )
              ],
            ),
          ],
        ));
  }
}
