import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ExtendableFab extends StatelessWidget {
  //const ExtendableFab({Key? key}) : super(key: key);

  VoidCallback extender;
  VoidCallback mainButton;

  ExtendableFab(this.extender, this.mainButton);

  Widget build(BuildContext context) {
    final Animation<double> animation =
        NavigationRail.extendedAnimation(context);
    return AnimatedBuilder(
      animation: animation,
      builder: (BuildContext context, Widget? child) {
        // The extended fab has a shorter height than the regular fab.
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              height: 56,
              padding: EdgeInsets.symmetric(
                vertical: lerpDouble(0, 6, animation.value)!,
              ),
              child: animation.value == 0
                  ? Padding(
                      padding: EdgeInsets.only(left: 0),
                      child: Stack(
                        alignment: AlignmentDirectional.centerStart,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: IconButton(
                              iconSize: 40,
                              icon: Image.asset(
                                "assets/logo.png",
                                fit: BoxFit.cover,
                              ),
                              onPressed: this.extender,
                            ),
                          ),
                          Icon(Icons.arrow_left,color: Colors.white,),
                        ],
                      ),
                    )
                  : Row(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.centerStart,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: IconButton(
                          iconSize: 40,
                          icon: Image.asset(
                            "assets/logo.png",
                            fit: BoxFit.cover,
                          ),
                          onPressed: this.extender,
                        ),
                      ),
                      Icon(Icons.arrow_right,color: Colors.white,),
                    ],
                  ),
                  Text(
                    ' FARMÁCIA SOCIAL ',
                    style: TextStyle(
                        color: Color(0xffA3B1BA),
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )
                ],
              )
              /*Align(
                      alignment: AlignmentDirectional.centerStart,
                      widthFactor: animation.value,
                      child: Padding(
                        padding: const EdgeInsetsDirectional.only(start: 8),
                        child: FloatingActionButton.extended(
                          elevation: 0,
                          backgroundColor: Color(0xff344955),
                          icon: SizedBox(
                            height: 40,
                            width: 65,
                            child: Row(
                              children: [
                                Icon(Icons.arrow_right),
                                Image.asset(
                                  "assets/logo.png",
                                  fit: BoxFit.cover,
                                )
                              ],
                            ),
                          ),
                          label: Text(
                            ' FARMÁCIA SOCIAL ',
                            style: TextStyle(
                                color: Color(0xffA3B1BA),
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          onPressed: this.extender,
                        ),
                      ),
                    ),*/
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Container(
                height: 56,
                padding: EdgeInsets.symmetric(
                  vertical: lerpDouble(0, 6, animation.value)!,
                ),
                child: animation.value == 0
                    ? Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: FloatingActionButton(
                          backgroundColor: Color(0xffF9AA33),
                          child: FaIcon(
                            FontAwesomeIcons.handHoldingMedical,
                            color: Colors.black87,
                          ),
                          onPressed: this.mainButton,
                        ),
                      )
                    : Align(
                        alignment: AlignmentDirectional.centerStart,
                        widthFactor: animation.value,
                        child: Padding(
                          padding: const EdgeInsetsDirectional.only(start: 8),
                          child: FloatingActionButton.extended(
                            backgroundColor: Color(0xffF9AA33),
                            icon: FaIcon(
                              FontAwesomeIcons.handHoldingMedical,
                              color: Colors.black87,
                            ),
                            label: Text(
                              ' DOAR ',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            onPressed: this.mainButton,
                          ),
                        ),
                      ),
              ),
            )
          ],
        );
      },
    );
  }
}
