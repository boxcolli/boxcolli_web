import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context).primaryColor,
                ),
                shape: BoxShape.circle,
              ),
            ),
            const Text(
              '\uD83C\uDFC1',
              style: TextStyle(
                fontSize: 24.0,
              ),
            ),
          ],
        ),        
      ],
    );
  }

}