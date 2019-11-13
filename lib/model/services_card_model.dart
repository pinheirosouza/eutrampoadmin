import 'package:flutter/material.dart';

enum Status { Pending, Approved, Rejected }

class Services {
  String name;
  String comment;
  String pos;
  String cliques;

  Services(
      {this.name,
      this.comment,
      this.cliques,
      this.pos,
      });
}

List<Services> servicesList = [
  Services(
    name: "Faxina",
    pos: "1",
    cliques: "41"
  ),
  Services(
    name: "Jardinagem",
    pos: "2",
    cliques: "32"
  ),
  Services(
    name: "Eletricista",
    pos: "3",
    cliques: "29"
  ),
  Services(
    name: "Marceneiro",
    pos: "4",
    cliques: "20"
  ),
  Services(
    name: "Hidráulico",
    pos: "5",
    cliques: "8"
  ),
  
];
