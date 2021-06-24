import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:farmacia_social/Home.dart';
import 'package:farmacia_social/widgets/ExtendableFab.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ResponsiveNavigation extends StatefulWidget {
  const ResponsiveNavigation({Key? key}) : super(key: key);

  @override
  _ResponsiveNavigationState createState() => _ResponsiveNavigationState();
}

class _ResponsiveNavigationState extends State<ResponsiveNavigation> {
  int _selectedIndex = 0;
  bool _isDesktop = true;
  bool _extended = false;

  final iconList = <IconData>[
    FontAwesomeIcons.home,
    FontAwesomeIcons.question,
    FontAwesomeIcons.headset,
    FontAwesomeIcons.userCircle,
  ];

  _setExtended() => setState(() => _extended = !_extended);

  _func2() {
    print("doar");
  }

  _ajustarVisualizacao(double larguraTela) {
    int colunas = 1;
    if (larguraTela <= 600) {
      /*     setState(() {
        _isDesktop = false;
      });*/
      colunas = 1;
    } else if (larguraTela <= 960) {
      /*  setState(() {
        _isDesktop = true;
      });*/
      colunas = 2;
    } else {
      /*    setState(() {
        _isDesktop = true;
      });*/
      colunas = 4;
    }
    return colunas;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      var largura = constraints.maxWidth;
      var alturaBarra = AppBar().preferredSize.height;
      double alturaBanner = largura < 960 ? 200 : 350;
      largura < 600 ? _isDesktop = false : _isDesktop = true;

      return _isDesktop
          ?Scaffold(
        backgroundColor: Color(0xffEEF0F2),
        body: Row(
          children: <Widget>[
            NavigationRail(
              leading: ExtendableFab(_setExtended, _func2),
              selectedLabelTextStyle:
              TextStyle(color: Color(0xffF9AA33), fontSize: 20),
              unselectedLabelTextStyle:
              TextStyle(color: Color(0xffA3B1BA), fontSize: 18),
              extended: _extended,
              backgroundColor: Color(0xff344955),
              selectedIndex: _selectedIndex,
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              labelType: NavigationRailLabelType.none,
              //mudar se estiver expandido
              destinations: const <NavigationRailDestination>[
                NavigationRailDestination(
                  icon: Icon(
                    Icons.home_outlined,
                    color: Color(0xffA3B1BA),
                  ),
                  selectedIcon: Icon(
                    Icons.home,
                    color: Color(0xffF9AA33),
                    size: 30,
                  ),
                  label: Text('Página Inicial'),
                ),
                NavigationRailDestination(
                  icon: FaIcon(
                    FontAwesomeIcons.questionCircle,
                    color: Color(0xffA3B1BA),
                  ),
                  selectedIcon: FaIcon(
                    FontAwesomeIcons.solidQuestionCircle,
                    color: Color(0xffF9AA33),
                    size: 30,
                  ),
                  label: Text('Dúvidas'),
                ),
                NavigationRailDestination(
                  icon: Icon(
                    Icons.headset_mic_outlined,
                    color: Color(0xffA3B1BA),
                  ),
                  selectedIcon: Icon(
                    Icons.headset_mic,
                    color: Color(0xffF9AA33),
                    size: 30,
                  ),
                  label: Text('Contato'),
                ),
                NavigationRailDestination(
                  icon: Icon(
                    Icons.account_circle_outlined,
                    color: Color(0xffA3B1BA),
                  ),
                  selectedIcon: Icon(
                    Icons.account_circle,
                    color: Color(0xffF9AA33),
                    size: 30,
                  ),
                  label: Text('Meu Perfil'),
                ),
              ],
            ),
            const VerticalDivider(thickness: 1, width: 1),
            // This is the main content.
            Expanded(
              child: Home(),
            )
          ],
        ),
      )
      :Scaffold(
        backgroundColor: Color(0xffEEF0F2),
      /*  body: Center(
          child: Text('selectedIndex: $_selectedIndex'),
        ), */
        body: Home(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xffF9AA33),
          child: FaIcon(
            FontAwesomeIcons.handHoldingMedical,
            color: Colors.black87,
          ),
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
          elevation: 4,
          activeColor: Color(0xffF9AA33),
          inactiveColor: Color(0xffA3B1BA),
          backgroundColor: Color(0xff344955),
          icons: iconList,
          activeIndex: _selectedIndex,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.verySmoothEdge,
          leftCornerRadius: 32,
          rightCornerRadius: 32,
          onTap: (index) => setState(() => _selectedIndex = index),
          //other params
        ),
      );
    });
  }
}
