import 'package:flutter/material.dart';
import 'package:intel_comm_flutter/services/user.dart';
import 'package:intel_comm_flutter/views/Subscription_screens/SubscriptionManagement.dart';
import 'package:intel_comm_flutter/views/productCrud/addProduct.dart';
import 'package:intel_comm_flutter/views/productCrud/getAllProduct.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    User? customUser = context.read<User>();
    Size size = MediaQuery.of(context).size;

    //
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Wrap(
                alignment: WrapAlignment.spaceEvenly,
                // crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  //todo kpi 1
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(8),
                      margin: EdgeInsets.all(5),
                      width: MediaQuery.of(context).size.width * .15,
                      height: size.height * .18,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "kpi 1",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          Expanded(child: SizedBox()),
                          Text(
                            "value 1",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //todo kpi 2
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(8),
                      margin: EdgeInsets.all(5),
                      width: MediaQuery.of(context).size.width * .15,
                      height: size.height * .18,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "kpi 2",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          Expanded(child: SizedBox()),
                          Text(
                            "value 2",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //todo kpi 3
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(8),
                      margin: EdgeInsets.all(5),
                      width: MediaQuery.of(context).size.width * .15,
                      height: size.height * .18,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "kpi 2",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          Expanded(child: SizedBox()),
                          Text(
                            "value 2",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //todo kpi 4
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(8),
                      margin: EdgeInsets.all(5),
                      width: MediaQuery.of(context).size.width * .15,
                      height: size.height * .18,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "kpi 2",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          Expanded(child: SizedBox()),
                          Text(
                            "value 2",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Wrap(
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  //todo subscription management
                  Stack(
                    children: [
                      Positioned(
                        left: 20,
                        child: Text(
                          "Subscription Management",
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        ),
                        width: size.width * .4,
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.all(20),
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          //subscription management
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const SubscriptionManagement(),
                                  ),
                                );
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.purple,
                                ),
                                padding: EdgeInsets.all(8),
                                margin: EdgeInsets.all(5),
                                width: MediaQuery.of(context).size.width * .2,
                                child: Center(
                                  child: Text("Subscription Management"),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: customUser.isSubscribed == true
                                  ? () {}
                                  : null,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.purple,
                                ),
                                padding: EdgeInsets.all(8),
                                margin: EdgeInsets.all(5),
                                width: MediaQuery.of(context).size.width * .2,
                                child: Center(
                                  child: Text("Add Shopify Credentials"),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  //todo product management
                  Stack(
                    children: [
                      Positioned(
                        left: 20,
                        child: Text(
                          "Product Management",
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        ),
                        width: size.width * .4,
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.all(20),
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          //subscription management
                          children: [
                            InkWell(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const AddProduct(),
                                ),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.purple,
                                ),
                                padding: EdgeInsets.all(8),
                                margin: EdgeInsets.all(5),
                                width: MediaQuery.of(context).size.width * .2,
                                child: Center(
                                  child: Text("Add Product"),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AllProducts(),
                                ),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.purple,
                                ),
                                padding: EdgeInsets.all(8),
                                margin: EdgeInsets.all(5),
                                width: MediaQuery.of(context).size.width * .2,
                                child: Center(
                                  child: Text("View All Products"),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
