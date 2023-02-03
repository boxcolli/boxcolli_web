import 'package:boxcolli_web/markdown/home_md.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

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
            Text(
              '\uD83C\uDFC1',
              style: TextStyle(
                fontSize: 100.0,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ],
        ),
        Text(
          'Boxcolli Demo Website',
          style: TextStyle(
            fontSize: 30.0,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ],
    );
  }
}
