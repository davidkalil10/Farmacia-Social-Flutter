import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _escolhaMenuItem(String rota) {
      print("vou para $rota");
      // Navigator.pushNamed(context, rota);
    }

    Map<IconData, Map> itensMenu = {
      FontAwesomeIcons.home: {'titulo': "Home", 'rota': "/home"},
      FontAwesomeIcons.infoCircle: {'titulo': "Sobre", 'rota': "/sobre"},
      FontAwesomeIcons.question: {'titulo': "Dúvidas", 'rota': "/duvidas"},
      FontAwesomeIcons.headset: {'titulo': "Contato", 'rota': "/contato"},
      FontAwesomeIcons.userCircle: {'titulo': "Perfil", 'rota': "/perfil"},
    };

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
          )
        ],
      ),
      actions: [
        PopupMenuButton<String>(
          icon: Icon(
            Icons.more_vert,
            color: Colors.blueGrey,
          ),
          padding: EdgeInsets.zero,
          onSelected: _escolhaMenuItem,
          itemBuilder: (context) => itensMenu.entries
              .map<PopupMenuEntry<String>>((e) => PopupMenuItem(
                    value: e.value['rota'],
                    child: Row(
                      children: [
                        Expanded(
                            child: Center(
                                child: FaIcon(
                          e.key,
                          color: Colors.blueGrey,
                        ))),
                        Expanded(flex: 2, child: Text(e.value['titulo']))
                      ],
                    ),
                  ))
              .toList(),
        )
      ],
    );
  }
}
