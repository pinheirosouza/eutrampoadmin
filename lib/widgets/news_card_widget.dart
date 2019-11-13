import 'package:flutter/material.dart';
import 'package:eutrampoadmin/model/news_card_model.dart';

class NewsCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      shadowColor: Colors.grey,
      borderRadius: BorderRadius.circular(4),
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.all(20),
        height: 500,
        width: 680,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Notícias Recentes",
              style: TextStyle(
                              fontFamily: "Arcon",
                              color: Colors.grey, 
                              fontSize: 40, 
                              fontWeight: FontWeight.normal),
            ),
            SizedBox(height: 10),
            Text(
              "Últimas notícias publicadas pelo SENAC",
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: commentList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: ListTile(
                      dense: true,
                      title: Text(
                        commentList[index].name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "${commentList[index].comment}",
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: <Widget>[
                                Text(
                                  "${commentList[index].date}",
                                  style: TextStyle(fontSize: 12),
                                ),
                                SizedBox(width: 10),
                                Icon(Icons.edit, size: 15, color: Colors.grey),
                                SizedBox(width: 10),
                                Icon(Icons.highlight_off,
                                    size: 15, color: Colors.grey),
                                SizedBox(width: 10),                           
                              ],
                            ),
                          ],
                        ),
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
