import 'package:eutrampoadmin/tabs/courses_tab.dart';
import 'package:eutrampoadmin/tabs/dashboard_tab.dart';
import 'package:eutrampoadmin/tabs/news_tab.dart';
import 'package:eutrampoadmin/tabs/profile_tab.dart';
import 'package:eutrampoadmin/tabs/vacancies_tab.dart';
import 'package:eutrampoadmin/widgets/navbar_widget.dart';
import "package:flutter/material.dart";

class HomeScreen extends StatelessWidget {

  final _pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
          appBar: NavBar(_pageController, "Dashboard", Icons.dashboard, 0),
          body: DashboardTab(),
        ),
        Scaffold(
          appBar: NavBar(_pageController, "Gerenciar Vagas", Icons.arrow_back, 0),
          body: VacanciesTab(),
        ),
        Scaffold(
          appBar: NavBar(_pageController,"Gerenciar Cursos", Icons.arrow_back, 0),
          body: CoursesTab()
        ),
        Scaffold(
          appBar: NavBar(_pageController,"Gerenciar Notícias",Icons.arrow_back, 0),
          body: NewsTab(),
        ),
        Scaffold(
          appBar: NavBar(_pageController,"Perfil", Icons.arrow_back, 0),
          body: ProfileTab(),
        ),
    ],);
  }
}