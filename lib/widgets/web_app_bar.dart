import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';

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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: TextButton.icon(
                    style: TextButton.styleFrom(primary: Colors.grey[700]),
                    onPressed: (){},
                    icon: FaIcon(FontAwesomeIcons.home,color: Colors.grey[700],size: 20,),
                    label: Text(
                      "Home",
                      style: TextStyle(color: Colors.grey[600],fontSize:15,fontWeight: FontWeight.bold),
                    )
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: TextButton.icon(
                    style: TextButton.styleFrom(primary: Colors.grey[700]),
                    onPressed: (){},
                    icon: FaIcon(FontAwesomeIcons.infoCircle,color: Colors.grey[700],size: 20,),
                    label: Text(
                      "Sobre",
                      style: TextStyle(color: Colors.grey[600],fontSize:15,fontWeight: FontWeight.bold),
                    )
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: TextButton.icon(
                    style: TextButton.styleFrom(primary: Colors.grey[700]),
                    onPressed: (){},
                    icon: FaIcon(FontAwesomeIcons.question,color: Colors.grey[700],size: 20,),
                    label: Text(
                      "Dúvidas",
                      style: TextStyle(color: Colors.grey[600],fontSize:15,fontWeight: FontWeight.bold),
                    )
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: TextButton.icon(
                  style: TextButton.styleFrom(primary: Colors.grey[700]),
                    onPressed: (){},
                    icon: FaIcon(FontAwesomeIcons.headset,color: Colors.grey[700],size: 20,),
                    label: Text(
                      "Contato",
                      style: TextStyle(color: Colors.grey[600],fontSize:15,fontWeight: FontWeight.bold),
                    )
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: TextButton.icon(
                    style: TextButton.styleFrom(primary: Colors.grey[700]),
                    onPressed: (){},
                    icon: FaIcon(FontAwesomeIcons.userCircle,color: Colors.grey[700],size: 20,),
                    label: Text(
                      "Perfil",
                      style: TextStyle(color: Colors.grey[600],fontSize:15,fontWeight: FontWeight.bold),
                    )
                ),
              )
            ],
          ),
          Expanded(
              child: Container()
          ),
          SizedBox(
            width: 10,
          ),
          ScaleTap(
              onPressed: (){},
              child: OutlinedButton(
                onPressed: () {
                  print("tap do filho");
                },
                child: Text("  Login  "),
                style: OutlinedButton.styleFrom(
                  backgroundColor: Color(0xff2a9d8f),
                  primary: Colors.white,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              )
          ),
          SizedBox(
            width: 10,
          ),
          ScaleTap(
              onPressed: (){},
              child: OutlinedButton(
                onPressed: () {
                  print("tap do filho");
                },
                child: Text("  DOAR  ",style: TextStyle(fontSize: 15),),
                style: OutlinedButton.styleFrom(
                  backgroundColor: Color(0xfff4a261),
                  primary: Colors.white,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              )
          ),
        ],
      ),
    );
  }
}
