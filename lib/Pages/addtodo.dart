import 'package:flutter/material.dart';
import 'package:todolisttwo/widgets/pagecontainer.dart';

class AddTodo extends StatelessWidget {
  const AddTodo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageContainer(
      widgetPage: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text(
            "Add Todo",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
