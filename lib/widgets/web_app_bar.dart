import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({Key? key}) : super(key: key);

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
            style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xfff4a261)),
          ),
          Text(
            "Social",
            style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xff2a9d8f)),
          ),
          Expanded(
              child: Container()
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home,
                color: Colors.grey,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.account_circle,
                color: Colors.grey,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.clean_hands_sharp,
                color: Colors.grey,
              )),
          SizedBox(
            width: 10,
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text("Cadastrar"),
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent, primary: Colors.white),
          ),
          SizedBox(
            width: 10,
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text("Entrar"),
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.orange, primary: Colors.white),
          )
        ],
      ),
    );
  }
}
