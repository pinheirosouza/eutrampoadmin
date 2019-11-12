import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      shadowColor: Colors.grey,
      borderRadius: BorderRadius.circular(4),
      color: Colors.white,
      child: Container(
        height: 500,
        width: 500,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4),
                    topRight: Radius.circular(4),
                  ),
                ),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  "assets/back.jpeg",
                                ),
                              ),
                              color: Colors.grey,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(4),
                                topRight: Radius.circular(4),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(),
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: 30,
                      child: CircleAvatar(
                        radius: 90,
                        backgroundImage: AssetImage("assets/img.jpg"),
                            )),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(4),
                    bottomRight: Radius.circular(4),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Text(
                      "SENAC",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Serviço Nacional de Aprendizagem Comercial",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, this is a consectetur adipisicing elit",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 45,
                      width: 120,
                      child: RaisedButton(
                        color: Color(0xff7560ED),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        onPressed: () => print("follow"),
                        child: Text(
                          "Ver Perfil",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "52",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              "Notícias Publicadas",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              "26",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              "Cursos Disponibilizados",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              "25",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              "Vagas Disponibilizadas",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
