import 'package:flutter/material.dart';
import 'package:intel_comm_flutter/views/Bills/components/customDropDownButton.dart';
import 'package:intel_comm_flutter/views/Bills/components/customtextfield.dart';
import 'package:intel_comm_flutter/views/Bills/components/detailsCard.dart';
import 'package:intel_comm_flutter/views/Bills/components/orderCardView.dart';
import 'package:intel_comm_flutter/views/Bills/components/rowData.dart';
import 'package:intel_comm_flutter/views/addToCart/components/rowData.dart';

import '../../components/HomeDrawer.dart';
import '../../components/appbar.dart';
import '../../constants/textStyles.dart';
import 'components/randomData.dart';

class Bills extends StatefulWidget {
  const Bills({Key? key}) : super(key: key);

  @override
  State<Bills> createState() => _BillsState();
}

class _BillsState extends State<Bills> {
  String dropdownValue = list.first;


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
        selectedIndex: 3,
      ),
      body: Container(
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 40, top: 40, right: 40),
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
                      Flexible(
                        child: SizedBox(
                            height: screenHeight * 0.8,
                            child: ListView.builder(
                                itemCount: randomDataList.length,
                                itemBuilder: (context, index) {
                                  Map<String, dynamic> item =
                                      randomDataList[index];

                                  return Padding(
                                      padding: EdgeInsets.all(5),
                                      child: OrderCardView());
                                })),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                      width: size.width * 0.4,
                      color: clr.inversePrimary,
                      child: Center(
                          child: CustomTextField(
                        text: 'Search for Order...',
                      ))),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(40),
              color: clr.secondaryContainer,
              height: double.infinity,
              width: size.width * 0.6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Order #35",
                        style: headingTextStyle(),
                      ),
                      ElevatedButton(onPressed: () {}, child: Text('Active'))
                    ],
                  ),
                  Text(
                    'Details',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DetailsCard(
                        upperText: 'Table',
                        lowerText: '2B',
                      ),
                      DetailsCard(
                        upperText: 'Guests',
                        lowerText: '2',
                      ),
                      DetailsCard(
                        upperText: 'Customer',
                        lowerText: 'Kate Woods',
                      ),
                      DetailsCard(
                        upperText: 'Payment',
                        lowerText: 'By Cash',
                      ),
                    ],
                  ),
                  Text('Order info',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Container(
                    padding: EdgeInsets.all(0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Items',
                          style: TextStyle(color: Colors.white70),
                        ),
                        Text(
                          'Price',
                          style: TextStyle(color: Colors.white70),
                        ),
                      ],
                    ),
                  ),

                    Container(
                      height: screenHeight * 0.3,
                      child: ListView.builder(
                        itemCount: sampleBillItems.length,
                        itemBuilder: (context, index) {
                          BillItem item = sampleBillItems[index];
                          return RowDataBills(
                            imageProvider: AssetImage(item.imageAsset),
                            text: item.text,
                            text2: item.price,
                          );
                        },
                      ),

                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text('Total',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    Text('\$14.71',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                  ],),
                  
                  Center(child: Container(
                    width: 500,
                      height: 50,
                      child: ElevatedButton(onPressed: (){}, child: Text('Charge Customer \$14.71'))))

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
