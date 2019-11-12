import 'package:eutrampoadmin/widgets/courses_card_widget.dart';
import 'package:eutrampoadmin/widgets/info_card_widget.dart';
import 'package:eutrampoadmin/widgets/news_card_widget.dart';
import 'package:eutrampoadmin/widgets/profile_card_widget.dart';
import 'package:eutrampoadmin/widgets/services_card_widget.dart';
import 'package:flutter/material.dart';

class DashboardTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(0, 50, 50, 0),
              child: InfoCard(
                iconBgColor: Color.fromARGB(255,102,46,147), 
                cardTitle: "Serviços realizados", 
                mainText: "Hoje", 
                subText: "354", 
                icon: Icons.work,),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(50, 50, 50, 0),
              child: InfoCard(
                iconBgColor: Color.fromARGB(255,102,46,147), 
                cardTitle: "Vagas Distribuídas", mainText: "", 
                subText: "18", 
                icon: Icons.people_outline,),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(50, 50, 0, 0),
              child: InfoCard(iconBgColor: Color.fromARGB(255,102,46,147), 
              cardTitle: "Renda gerada", 
              mainText: "Hoje", 
              subText: "R\$ 2800,00", 
              icon: Icons.monetization_on,),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(0, 50, 40, 0),
              child: ServicesCard(),),
            Padding(
              padding: EdgeInsets.fromLTRB(40, 50, 0, 0),
              child: CoursesCard(),)
          ],
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
          child:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(0, 50, 30, 0),
              child: NewsCard(),),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 50, 0, 0),
              child: ProfileCard(),)
          ],
        )
        )
      ],
    ),
    ) ;
  }
}