// Botões dispostos no NavBar
// Estas classes serão consumidas somente pelo arquivo navbar_widget

import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {

  final String text;
  final PageController controller;
  final int page;

  NavButton(this.text, this.controller, this.page);

  @override
  Widget build(BuildContext context) {
    return  FlatButton(
              child: Text(text, style: TextStyle(fontSize:18.0, fontFamily: 'Arcon',color: Colors.white)),
              onPressed: () {controller.jumpToPage(page);}
            );
  }
}

class NavIconButton extends StatelessWidget {

  final String text;
  final IconData icon;
  final PageController controller;
  final int page;

  NavIconButton(this.text,this.icon, this.controller, this.page);

  @override
  Widget build(BuildContext context) {
    return  FlatButton(
            child: Row(
              children: <Widget> [
                Padding(
                  padding: EdgeInsets.fromLTRB(0,0,15.0,0),
                  child: Icon(icon), 
                ),              
                Text(text, style: TextStyle(fontSize:18.0, fontFamily: 'Arcon')),
                ]
                ),
            textColor: Color.fromARGB(255,253,236,8),    
            onPressed: () {controller.jumpToPage(page);});
  }
}
