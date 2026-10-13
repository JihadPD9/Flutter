import 'package:flutter/material.dart';
import 'package:flutter_jihad_rpl1/listView/ArticleListScreen.dart';

class NavigatorWidget extends StatelessWidget {
  const NavigatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return ArticleListScreen();
                },
              ),
            );
          },
          child: Text("List")
        ),
      ]
    );
  }
}