import 'package:flutter/material.dart';
import 'package:expandable_card/expandable_card.dart';

class Comp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ExpandableCardPage(
          page: Container(
            child: Center(
              child: Row(
                children: <Widget>[Text("Nikhil")],
              ),
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: new NetworkImage(
                        "https://img.bleacherreport.net/img/images/photos/003/806/761/hi-res-05ac1ab41d028386a40c950207aa7bc6_crop_north.jpg?h=533&w=800&q=70&crop_x=center&crop_y=top"),
                    fit: BoxFit.cover)),
          ),
          expandableCard: ExpandableCard(
            backgroundColor: Color(0xffffffff),
            hasRoundedCorners: true,
            hasHandle: false,
            minHeight: 600,
            maxHeight: 600,
            children: <Widget>[
              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  Text(
                    "Today",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 200),
                    child: Text(
                      "1/4/19",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              News(
                  "https://sc02.alicdn.com/kf/HTB1iaenj8HH8KJjy0Fbq6AqlpXa9/College-Team-Flags-Sport-Football-Flags-University.jpg_350x350.jpg",
                  "Spurs transfer news\nlive: Ndombele deal \nclose to completion"),
                  News(
                  "https://sc02.alicdn.com/kf/HTB1iaenj8HH8KJjy0Fbq6AqlpXa9/College-Team-Flags-Sport-Football-Flags-University.jpg_350x350.jpg",
                  "Spurs transfer news\nlive: Ndombele deal \nclose to completion"),
                  News(
                  "https://sc02.alicdn.com/kf/HTB1iaenj8HH8KJjy0Fbq6AqlpXa9/College-Team-Flags-Sport-Football-Flags-University.jpg_350x350.jpg",
                  "Spurs transfer news\nlive: Ndombele deal \nclose to completion"),
                  News(
                  "https://sc02.alicdn.com/kf/HTB1iaenj8HH8KJjy0Fbq6AqlpXa9/College-Team-Flags-Sport-Football-Flags-University.jpg_350x350.jpg",
                  "Spurs transfer news\nlive: Ndombele deal \nclose to completion"),
            ],
          ),
        ),
      ),
    );
  }
}

Widget News(var link, var tittle) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
    //color: Color(0xffe0ffed),
    elevation: 2.0,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Container(
                  height: 80,
                  width: 120,
                  child: Image.network(
                    link,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Lepavala",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
        Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "* Now Playing",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "0",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                SizedBox(width: 8,),
                Container(
                  width: 50,
                  height: 20,
                  child: RaisedButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    onPressed: () {},
                    child: Text("BT"),
                    textColor: Colors.white,
                    color: Colors.greenAccent,
                  ),
                ),
                SizedBox(width: 8,),
                Text(
                  "3",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Text("The match are playing",style: TextStyle(color: Colors.grey,fontSize: 10),)
          ],
        )),
       Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Container(
                  height: 80,
                  width: 120,
                  child: Image.network(
                    link,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Lepavala",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
       
      ],
    ),
  );
}
