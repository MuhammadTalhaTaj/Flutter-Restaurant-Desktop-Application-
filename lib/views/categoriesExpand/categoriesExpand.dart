import 'package:flutter/material.dart';
import 'package:intel_comm_flutter/views/categoriesExpand/components/itemCard.dart';
import 'package:intel_comm_flutter/views/foodAndDrinkCategories/components/itemCard.dart';

import '../../components/HomeDrawer.dart';
import '../../components/appbar.dart';
import '../addToCart/addtocart.dart';

class CategoriesExpand extends StatefulWidget {
  const CategoriesExpand({Key? key}) : super(key: key);

  @override
  State<CategoriesExpand> createState() => _CategoriesExpandState();
}

class _CategoriesExpandState extends State<CategoriesExpand> {

  int _selectedItemIndex = -1; // Initialize with -1 to indicate no selection

  void _selectItem(int index) {
    setState(() {
      _selectedItemIndex = index;
    });
  }

  List<Map<String, dynamic>> itemsData = [
    {'image': AssetImage('assets/images/food/cheese.png'), 'text': 'Cheese'},
    {'image': AssetImage('assets/images/food/burger2.png'), 'text': 'Burger'},
    {'image': AssetImage('assets/images/food/cheese.png'), 'text': 'Cheese'},
    {'image': AssetImage('assets/images/food/cheese.png'), 'text': 'Cheese'},
    {'image': AssetImage('assets/images/food/cheese.png'), 'text': 'Cheese'},
    {'image': AssetImage('assets/images/food/cheese.png'), 'text': 'Cheese'},
    // Add more items here...
  ];
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;
    ColorScheme clr = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: HomeAppBar(clr: clr),
      drawer: HomeDrawer(clr: clr,selectedIndex: 1,),
      body: Container(

        padding: EdgeInsets.all(45),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Burgers',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(
              height: size.height*0.7,
              child: GridView.count(

                childAspectRatio: (itemWidth / itemHeight),

                shrinkWrap: true,
                primary: false,
                padding: const EdgeInsets.symmetric(vertical: 20),
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                crossAxisCount: 3,
                children: itemsData.map((item) {
                  int index = itemsData.indexOf(item);
                  return ItemCardExpand(
                    imageProvider: item['image'],
                    text: item['text'],
                    isSelected: _selectedItemIndex == index,
                    onTap: () {
                      _selectItem(index);


                     showModalBottomSheet<void>(


                      context: context,
                      builder: (BuildContext context) {
                        return AddToCart();

                      },
                    );
                    },
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
