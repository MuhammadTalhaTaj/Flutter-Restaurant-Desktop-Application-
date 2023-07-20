import 'package:flutter/material.dart';
import 'package:intel_comm_flutter/views/Bills/components/customDropDownButton.dart';
import 'package:intel_comm_flutter/views/Bills/components/orderCardView.dart';

import '../../components/HomeDrawer.dart';
import '../../components/appbar.dart';
import '../../constants/textStyles.dart';



class Bills extends StatefulWidget {
  const Bills({Key? key}) : super(key: key);

  @override
  State<Bills> createState() => _BillsState();
}

class _BillsState extends State<Bills> {
  String dropdownValue = list.first;

  final List<Map<String, dynamic>> randomDataList = [
    {
      'orderNumber': 'Order #35',
      'status': 'Active',
      'amount': 42.0,
      'tableNumber': 'Table 2B',
      'guestCount': 2,
      'time': '14:25',
    },
    {
      'orderNumber': 'Order #12',
      'status': 'Inactive',
      'amount': 28.5,
      'tableNumber': 'Table 1A',
      'guestCount': 4,
      'time': '12:10',
    },
    {
      'orderNumber': 'Order #77',
      'status': 'Active',
      'amount': 85.75,
      'tableNumber': 'Table 5C',
      'guestCount': 1,
      'time': '18:45',
    },
    {
      'orderNumber': 'Order #77',
      'status': 'Active',
      'amount': 85.75,
      'tableNumber': 'Table 5C',
      'guestCount': 1,
      'time': '18:45',
    },
    {
      'orderNumber': 'Order #77',
      'status': 'Active',
      'amount': 85.75,
      'tableNumber': 'Table 5C',
      'guestCount': 1,
      'time': '18:45',
    },
    {
      'orderNumber': 'Order #77',
      'status': 'Active',
      'amount': 85.75,
      'tableNumber': 'Table 5C',
      'guestCount': 1,
      'time': '18:45',
    },
    {
      'orderNumber': 'Order #77',
      'status': 'Active',
      'amount': 85.75,
      'tableNumber': 'Table 5C',
      'guestCount': 1,
      'time': '18:45',
    },
    // Add more random data as needed
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final double screenHeight =
        MediaQuery.of(context).size.height - kToolbarHeight;

    ColorScheme clr = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: HomeAppBar(clr: clr),
      drawer: HomeDrawer(
        clr: clr,
        selectedIndex: 0,
      ),
      body: Container(
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(40),
                  color: clr.primaryContainer,
                  height: screenHeight * .8,
                  width: size.width * 0.4,
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Bills',
                              style: headingTextStyle(),
                            ),
                            InkWell(
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: clr.primary,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Icon(Icons.add),
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          CustomDropDownButton(
                              dropdownValue,
                            (String? value) {
                              setState(() {
                                dropdownValue = value!;
                              });
                            },

                          ),
                          CustomDropDownButton(
                            dropdownValue,
                            (String? value) {
                              setState(() {
                                dropdownValue = value!;
                              });
                            },

                          ),
                        ],
                      ),

         Expanded(
           child: SizedBox(
    height: screenHeight*0.7,
             child: ListView.builder(
    itemCount: randomDataList.length,
        itemBuilder: (context, index) {
      Map<String, dynamic> item = randomDataList[index];


      return Padding(
        padding: EdgeInsets.all(5),
            child: OrderCardView());

    })),
         )

    ],
                  ),
                ),
                Container(
                  color: Colors.yellow,
                  height: screenHeight * 0.2,
                  width: size.width * 0.4,
                )
              ],
            ),
            Container(
              color: clr.secondaryContainer,
              height: double.infinity,
              width: size.width * 0.6,
            ),

          ],
        ),
      ),
    );
  }
}
