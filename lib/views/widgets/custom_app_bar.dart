import 'package:flutter/material.dart';
import 'package:notesapp/views/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('notes', style: TextStyle(fontSize: 28)),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}
