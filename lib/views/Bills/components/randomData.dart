class BillItem {
  final String imageAsset;
  final String text;
  final double price;

  BillItem({required this.imageAsset, required this.text, required this.price});
}

List<BillItem> sampleBillItems = [
  BillItem(imageAsset: 'assets/images/food/burger2.png', text: '1xHamburger', price: 4.50),
  BillItem(imageAsset: 'assets/images/food/cheese.png', text: '2xCheese', price: 9.0),
  BillItem(imageAsset: 'assets/images/food/burger2.png', text: '3xHamburger', price: 13.50),
  BillItem(imageAsset: 'assets/images/food/burger2.png', text: '1xHamburger', price: 4.50),

];



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
