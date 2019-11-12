import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class InfoCard extends StatelessWidget {
  final String cardTitle;
  final IconData icon;
  final Color iconBgColor;
  final String mainText;
  final String subText;

  const InfoCard(
      {Key key,
      this.cardTitle,
      this.icon,
      this.iconBgColor,
      this.mainText,
      this.subText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        height: 200,
        width: 350,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Material(
              elevation: 10,
              color: Colors.white,
              shadowColor: Colors.grey,
              borderRadius: BorderRadius.circular(4),
              child: Container(
                height: 200,
                width: 350,
                padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      cardTitle,
                      style: TextStyle(
                        color: Colors.grey, 
                        fontSize: 16, 
                        fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    FittedBox(
                      child: Text(
                        mainText,
                        style: TextStyle(
                          color: Colors.grey, 
                          fontSize: 12, 
                          fontWeight: FontWeight.normal),
                      ),
                    ),
                    Spacer(),
                    Divider(),
                    Align(
                        alignment: Alignment.topLeft,
                        child: FittedBox(
                          child: Text(
                            subText,
                            style: TextStyle(
                              fontFamily: "Arcon",
                              color: Colors.grey, 
                              fontSize: 40, 
                              fontWeight: FontWeight.normal),
                          ),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 20,
              child: Material(
                color: iconBgColor,
                borderRadius: BorderRadius.circular(4),
                elevation: 4,
                child: Container(
                  decoration: BoxDecoration(
                    color: iconBgColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  height: 50,
                  width: 80,
                  child: Icon(
                    icon,
                    size: 35,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
