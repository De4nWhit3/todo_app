import 'package:flutter/material.dart';

class ToDoDetailLoaded extends StatelessWidget {
  const ToDoDetailLoaded({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: 0,
          itemBuilder: (context, index) => const Text('index'),
        ),
      ),
    );
  }
}
