
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intel_comm_flutter/components/HomeDrawer.dart';
import 'package:intel_comm_flutter/components/appbar.dart';
import 'package:intel_comm_flutter/components/dropDownButton.dart';
import 'package:intel_comm_flutter/components/gaps.dart';
import 'package:intel_comm_flutter/constants/textStyles.dart';
import 'package:intel_comm_flutter/views/home/components/line_chart_sample1.dart';
import 'package:intel_comm_flutter/views/test/test.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<bool> isSelected = [false, true, false, false, false];

  List<Map<String, dynamic>> listData = List<Map<String, dynamic>>.generate(
      10, (counter) => {"name": "customer $counter", "orders": counter});

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    ColorScheme clr = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: HomeAppBar(clr: clr,text1: "Dashboard"),
      drawer: HomeDrawer(clr: clr,selectedIndex: 0,),
      body: Container(
        padding: EdgeInsets.all(20), //! padding for the whole body
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //todo second row=> Title + tabs
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Dashboard",
                    style: headingTextStyle(context),
                  ),
                  ToggleButtons(
                    isSelected: isSelected,
                    onPressed: (int index) {
                      setState(() {
                        for (int buttonIndex = 0;
                            buttonIndex < isSelected.length;
                            buttonIndex++) {
                          if (buttonIndex == index) {
                            isSelected[buttonIndex] = true;
                          } else {
                            isSelected[buttonIndex] = false;
                          }
                        }
                      });
                    },
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    selectedBorderColor: Colors.transparent,
                    selectedColor: clr.primary,
                    fillColor: clr.onPrimary,
                    color: clr.outline,
                    constraints: BoxConstraints(
                      minHeight: 40.0,
                      minWidth: 80.0,
                    ),
                    children: <Widget>[
                      Text(
                        "Yesterday",
                        style: TextStyle(
                            // color: clr.onPrimaryContainer,
                            ),
                      ),
                      Text(
                        "Today",
                        style: TextStyle(
                            // color: clr.onPrimaryContainer,
                            ),
                      ),
                      Text(
                        "Week",
                        style: TextStyle(
                            // color: clr.onPrimaryContainer,
                            ),
                      ),
                      Text(
                        "Month",
                        style: TextStyle(
                            // color: clr.onPrimaryContainer,
                            ),
                      ),
                      Text(
                        "Year",
                        style: TextStyle(
                            // color: clr.onPrimaryContainer,
                            ),
                      ),
                    ],
                  ),
                ],
              ),

              SingleChildScrollView(
                child: Wrap(
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  children: [
                    //todo linechart
                    HomeDefaultContainer(
                      clr: clr,
                      height: 400,
                      width: 400,
                      InputWidget: LineChart(
                        LineChartData(
                          lineBarsData: [
                            LineChartBarData(
                              // isCurved: true,
                              // color: Colors.purple,
                              // barWidth: 8,
                              // isStrokeCapRound: true,
                              // dotData: const FlDotData(show: false),
                              // belowBarData: BarAreaData(
                              //   show: false,
                              //   color: Colors.purple.withOpacity(0),
                              // ),
                              spots: const [
                                FlSpot(1, 1),
                                FlSpot(3, 2.8),
                                FlSpot(7, 1.2),
                                FlSpot(10, 2.8),
                                FlSpot(12, 2.6),
                                FlSpot(13, 3.9),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    //todo chart
                    HomeDefaultContainer(
                      clr: clr,
                      width: 400,
                      height: 400,
                      InputWidget: PieChart(
                        swapAnimationDuration:
                            Duration(milliseconds: 150), // Optional
                        swapAnimationCurve: Curves.linear, // Optional
                        PieChartData(
                          centerSpaceRadius: 100,
                          // read about it in the PieChartData section
                          sections: [
                            PieChartSectionData(value: 50),
                            PieChartSectionData(value: 30),
                            PieChartSectionData(value: 20),
                          ],
                        ),
                      ),
                    ),

                    //kpi's
                    Wrap(
                      alignment: WrapAlignment.start,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      direction: Axis.vertical,
                      children: [
                        //
                        HomeDefaultContainer(
                          clr: clr,
                          width: 160,
                          height: 100,
                          InputWidget: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.battery_0_bar,
                                    color: Colors.red,
                                  ),
                                  Text(
                                    "Total Orders",
                                  ),
                                ],
                              ),
                              Text("21,908", style: headingTextStyle(context)),
                            ],
                          ),
                        ),

                        //

                        HomeDefaultContainer(
                          clr: clr,
                          height: 100,
                          width: 160,
                          InputWidget: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.battery_0_bar,
                                    color: Colors.red,
                                  ),
                                  Text(
                                    "New Customers",
                                  ),
                                ],
                              ),
                              Text(
                                "256",
                                style: headingTextStyle(context),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    //!
                    //! ElevatedButton(
                    //!   onPressed: () {
                    //!     Navigator.push(
                    //!       context,
                    //!       MaterialPageRoute(
                    //!         builder: (context) => Test(),
                    //!       ),
                    //!     );
                    //!   },
                    //!   child: Text("go to test"),
                    //! ),
                    HomeDefaultContainer(
                      clr: clr,
                      width: 400,
                      height: 300,
                      InputWidget: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Trending Dishes",
                                  style: bodyTextStyle(context),
                                ),
                                //todo drop down
                                DropdownButtonExample(),
                              ],
                            ),
                          ),

                          //
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Dishes",
                                ),
                                Text(
                                  "Orders",
                                ),
                              ],
                            ),
                          ),

                          Expanded(
                            child: ListView.builder(
                              itemCount: listData.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  padding: EdgeInsets.all(5),
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            CircleAvatar(
                                              child: Text(
                                                listData[index]["name"]
                                                    .toString()[0],
                                              ),
                                            ),
                                            xgap(
                                              width: 10,
                                            ),
                                            Text(
                                                listData[index]["name"]
                                                    .toString(),
                                                style: bodyTextStyle(context)),
                                          ],
                                        ),
                                        Text(
                                          listData[index]["orders"].toString(),
                                          style: bodyTextStyle(context),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),

                    HomeDefaultContainer(
                      clr: clr,
                      width: 400,
                      height: 300,
                      InputWidget: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Best Employee",
                                  style: bodyTextStyle(context),
                                ),
                                //todo drop down
                                DropdownButtonExample(),
                              ],
                            ),
                          ),

                          //
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Employee",
                                ),
                                Text(
                                  "Earnings",
                                ),
                              ],
                            ),
                          ),

                          Expanded(
                            child: ListView.builder(
                              itemCount: listData.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  padding: EdgeInsets.all(5),
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            CircleAvatar(
                                              child: Text(
                                                listData[index]["name"]
                                                    .toString()[0],
                                              ),
                                            ),
                                            xgap(
                                              width: 10,
                                            ),
                                            Text(
                                                listData[index]["name"]
                                                    .toString(),
                                                style: bodyTextStyle(context)),
                                          ],
                                        ),
                                        Text(
                                          listData[index]["orders"].toString(),
                                          style: bodyTextStyle(context),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),

                    //! main body wrap
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeDefaultContainer extends StatelessWidget {
  HomeDefaultContainer(
      {super.key,
      required this.clr,
      required this.InputWidget,
      this.height,
      this.width});

  final ColorScheme clr;
  Widget InputWidget;
  double? width, height;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: clr.onSecondary,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(20),
      width: width != null ? width : null,
      height: height != null ? height : null,
      child: InputWidget,
    );
  }
}

