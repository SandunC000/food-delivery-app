import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    var myPrimarytextStyle =
        TextStyle(color: Theme.of(context).colorScheme.inversePrimary);
    var mySecondarytextStyle =
        TextStyle(color: Theme.of(context).colorScheme.primary);

    return Padding(
      padding: const EdgeInsets.all(25),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).colorScheme.secondary),
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  '\$0.99',
                  style: myPrimarytextStyle,
                ),
                Text(
                  'Delivery Fee',
                  style: mySecondarytextStyle,
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  '15 - 30 min',
                  style: myPrimarytextStyle,
                ),
                Text(
                  'Delivery Time',
                  style: mySecondarytextStyle,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
