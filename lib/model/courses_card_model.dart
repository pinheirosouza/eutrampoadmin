import 'package:flutter/material.dart';

enum Status { Pending, Approved, Rejected }

class Courses {
  String name;
  String comment;
  String pos;
  String cliques;

  Courses(
      {this.name,
      this.comment,
      this.cliques,
      this.pos,
      });
}

List<Courses> coursesList = [
  Courses(
    name: "Ajustador Mecânico",
    pos: "1",
    cliques: "87"
  ),
  Courses(
    name: "Técnico em Calçados",
    pos: "2",
    cliques: "59"
  ),
  Courses(
    name: "Técnico em Elétrica",
    pos: "3",
    cliques: "44"
  ),
  Courses(
    name: "Técnico em Manutenção Automotiva",
    pos: "4",
    cliques: "37"
  ),
  Courses(
    name: "Serviços Residênciais",
    pos: "5",
    cliques: "25"
  ),
  
];
