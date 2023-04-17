import 'package:flutter/material.dart';
import 'package:intel_comm_flutter/components/appbar.dart';
import 'package:intel_comm_flutter/components/loadingWidget.dart';
import 'package:intel_comm_flutter/components/sidebar.dart';
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
      appBar: CustomAppBar(),
      drawer: size.width < 900
          ? Drawer(
              child: SideBar(),
            )
          : null,
      body: Container(
        child: Row(
          children: [
            size.width > 900
                ? Flexible(
                    // fit: FlexFit.loose,
                    flex: 2,
                    child: SideBar(),
                  )
                : SizedBox(),
            Flexible(
              flex: 10,
              fit: FlexFit.tight,
              child: Container(
                child: Center(child: LoadingWidget()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
