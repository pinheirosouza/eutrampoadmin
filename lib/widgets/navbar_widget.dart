import 'package:eutrampoadmin/buttons/navbar_button.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget with PreferredSizeWidget {

  final PageController pageController;
  final String title;
  final IconData icon;
  final int backicon;
  
  NavBar(this.pageController, this.title, this.icon, this.backicon);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Padding(
          padding: EdgeInsets.fromLTRB(80.0, 0, 0, 0),
          child: Row(
          children: <Widget> [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: NavIconButton(title, icon, pageController, backicon),
            ),
            ])
        ),
        backgroundColor: Color.fromARGB(255,102,46,147),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0,0,80.0,0), 
            child: Row(children: <Widget>[
              NavButton("Gerenciar Vagas", pageController, 1),
              NavButton("Gerenciar Cursos", pageController, 2),
              NavButton("Gerenciar Notícias", pageController, 3),
              VerticalDivider(color: Colors.white,),//Não está funcionando
              NavIconButton("Perfil", Icons.person, pageController, 4)
          ],))
          ],
      );
  }

  //"Gambiarra" para fazer o NavBar ser compatível com appBar
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  
}