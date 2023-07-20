import 'package:flutter/material.dart';
import 'package:intel_comm_flutter/views/addToCart/components/customIconButton.dart';
import 'package:intel_comm_flutter/views/addToCart/components/rowData.dart';

import '../../components/HomeDrawer.dart';
import '../../components/appbar.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ColorScheme clr = Theme.of(context).colorScheme;

    return Scaffold(

      backgroundColor: Colors.white,
      body:  ConstrainedBox(
          constraints: BoxConstraints(
            //maxWidth: 500,
           // minWidth: double.infinity,
          ),
          child: Expanded(
            child: Container(
              padding: EdgeInsets.all(90),
             // width: 500,
             // height: 800,
              color: Theme.of(context).primaryColor,
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.topRight,
                      child: Icon(
                        Icons.info,
                        // color: Theme.of(context).colorScheme.secondary,
                      )),
                  Flexible(
                    child: Image.asset(
                      'assets/images/food/burger2.png',
                      height: 170,
                      width: 200,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Big John',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text('650 g'),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    '\$7.25',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Theme.of(context).colorScheme.onPrimaryContainer),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  RowData(
                    imageProvider: AssetImage(
                      'assets/images/food/lettuce.png',
                    ),
                    text: 'Shredded Lettuce',
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  RowData(imageProvider: AssetImage(
                    'assets/images/food/cheese.png',
                  ),
                    text: 'Cheese',),
                  SizedBox(
                    height: 15,
                  ),
                  RowData(imageProvider: AssetImage(
                    'assets/images/food/pickle.png',
                  ),
                    text: 'Pickle Slices',),
                  SizedBox(
                    height: 35,
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Theme.of(context)
                              .colorScheme
                              .onPrimaryContainer, // Set the color of the text and icons when pressed
                          // You can customize other properties here as well
                        ),
                        child: Text('Add to Order'),
                      ))
                ],
              ),
            ),
          ),
        ),

    );
  }
}
