import 'package:flutter/material.dart';

enum Status { Pending, Approved, Rejected }

class Courses {
  String name;
  String comment;
  Status status;
  String pos;
  Color color;
  String date;

  Courses(
      {this.name,
      this.comment,
      this.status,
      this.pos,
      this.color,
      this.date});
}

List<Courses> coursesList = [
  Courses(
    name: "James Anderson",
    status: Status.Pending,
    pos: "1",
    color: Colors.blue,
    date: "May 19, 2019",
    comment:
        "Lorem Ipsum is simply dummy text of the printing and type setting industry. Lorem Ipsum has beenorem Ipsum is simply dummy text of the printing and type setting ",
  ),
  Courses(
    name: "Michael Jorden",
    status: Status.Approved,
    pos: "2",
    date: "May 19, 2019",
    color: Colors.green,
    comment:
        "Lorem Ipsum is simply dummy text of the printing and type setting industry. Lorem Ipsum has beenorem Ipsum is simply dummy text of the printing and type setting ",
  ),
  Courses(
    name: "Johnathan Doeting",
    status: Status.Rejected,
    color: Colors.red,
    pos: "3",
    date: "May 19, 2019",
    comment:
        "Lorem Ipsum is simply dummy text of the printing and type setting industry. Lorem Ipsum has beenorem Ipsum is simply dummy text of the printing and type setting ",
  ),
  Courses(
    name: "Johnathan Doeting",
    status: Status.Rejected,
    color: Colors.red,
    pos: "4",
    date: "May 19, 2019",
    comment:
        "Lorem Ipsum is simply dummy text of the printing and type setting industry. Lorem Ipsum has beenorem Ipsum is simply dummy text of the printing and type setting ",
  ),
];
