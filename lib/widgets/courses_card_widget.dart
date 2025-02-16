import 'package:flutter/material.dart';
import 'package:eutrampoadmin/model/courses_card_model.dart';

class CoursesCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      shadowColor: Colors.grey,
      borderRadius: BorderRadius.circular(4),
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.all(20),
        height: 400,
        width: 590,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Cursos Mais Acessados",
              style: TextStyle(
                              fontFamily: "Arcon",
                              color: Colors.grey, 
                              fontSize: 40, 
                              fontWeight: FontWeight.normal),
            ),
            SizedBox(height: 10),
            Text(
              "Cursos mais clicados pelos profissionais inscritos em nossa plataforma",
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: coursesList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: ListTile(
                      dense: true,

                      leading: Text(coursesList[index].pos),
                      title: Text(
                        coursesList[index].name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Text(
                        coursesList[index].cliques,
                        style: TextStyle(color: Color.fromARGB(255,102,46,147), fontSize: 20),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
