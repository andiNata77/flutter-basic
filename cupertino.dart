import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cupertino"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return Platform.isIOS
                    ? CupertinoAlertDialog(
                        title: Text("Delete Item"),
                        content: Text("Are you sure to delete this item?"),
                        actions: [
                          TextButton(
                            onPressed: () {},
                            child: Text("No"),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text("Yes"),
                          ),
                        ],
                      )
                    : AlertDialog(
                        title: Text("Delete Item"),
                        content: Text("Are you sure to delete this item?"),
                        actions: [
                          TextButton(
                            onPressed: () {},
                            child: Text("No"),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text("Yes"),
                          ),
                        ],
                      );
              },
            );
          },
          child: Text("Alert Dialog"),
        ),
      ),
    );
  }
}
