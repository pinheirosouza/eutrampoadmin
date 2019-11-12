import 'package:flutter/material.dart';
import 'package:eutrampoadmin/model/services_card_model.dart';

class ServicesCard extends StatelessWidget {

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
              "Serviços Mais Contratados",
              style: TextStyle(
                              fontFamily: "Arcon",
                              color: Colors.grey, 
                              fontSize: 40, 
                              fontWeight: FontWeight.normal),
            ),
            SizedBox(height: 10),
            Text(
              "Latest Comments on users from Material",
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: servicesList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: ListTile(
                      dense: true,
                      leading: Text(servicesList[index].pos),
                      title: Text(
                        servicesList[index].name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "${servicesList[index].comment}",
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: <Widget>[
                                Text(
                                  "${servicesList[index].date}",
                                  style: TextStyle(fontSize: 12),
                                ),
                                SizedBox(width: 10),
                                Icon(Icons.edit, size: 15, color: Colors.grey),
                                SizedBox(width: 10),
                                Icon(Icons.highlight_off,
                                    size: 15, color: Colors.grey),
                                SizedBox(width: 10),
                                Icon(Icons.favorite_border,
                                    size: 15, color: Colors.pink),
                              ],
                            ),
                          ],
                        ),
                      ),
                      isThreeLine: true,
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
