import 'package:flutter/material.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.lightBlue[50],
      shadowColor: Color(0xffE3F2FD),
      title: Row(
        children: [
          SizedBox(
            height: 40,
            width: 40,
            child: Image.asset(
              "assets/logo.png",
              fit: BoxFit.cover,
            ),
          ),
          Text(
              " Farmácia ",
            style: TextStyle(fontStyle: FontStyle.italic, fontSize: 25, fontWeight: FontWeight.bold, color: Color(0xfff4a261)),
          ),
          Text(
              "Social",
            style: TextStyle(fontStyle: FontStyle.italic, fontSize: 25,fontWeight: FontWeight.bold,color: Color(0xff2a9d8f)),
          )
        ],),
      actions: [
        IconButton(
            onPressed: (){},
            icon: Icon(Icons.home,color: Colors.grey,)
        ),
        IconButton(
            onPressed: (){},
            icon: Icon(Icons.account_circle,color: Colors.grey,)
        ),
        IconButton(
            onPressed: (){},
            icon: Icon(Icons.clean_hands_sharp,color: Colors.grey,)
        ),
      ],
    );
  }
}
