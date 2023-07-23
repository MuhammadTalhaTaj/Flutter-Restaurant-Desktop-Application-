import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: SizedBox(
            height: 50,
            width: 400,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.onSecondaryContainer
              ),
                onPressed: () {},
                child: Text(

                  'Save Changes',
                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                ))));
  }
}
