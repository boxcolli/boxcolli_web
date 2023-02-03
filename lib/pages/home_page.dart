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
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context).colorScheme.primary,
                ),
                shape: BoxShape.circle,
              ),
            ),
            const Text(
              '\uD83C\uDFC1',
              style: TextStyle(
                fontSize: 100.0,
              ),
            ),
          ],
        ),        
      ],
    );
  }

}