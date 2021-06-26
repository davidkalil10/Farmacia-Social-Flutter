import 'package:flutter/material.dart';

class NewItem{
  bool isExpanded;
  final Widget header;
  final Widget body;
  NewItem(this.isExpanded, this.header, this.body);
}

class NewPanelItem extends StatelessWidget {

  bool isQuestion;
  final String value;

  NewPanelItem({
    this.isQuestion = true,
    required this.value,
  });


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          this.isQuestion? "P": "R",
          style: TextStyle(
              fontSize: 20,
              color: Color(0xffF9AA33),
              fontWeight: FontWeight.bold),
        ),
        Text(
          this.value,
          style: TextStyle(fontSize: 15),
        )
      ],
    );
  }
}

