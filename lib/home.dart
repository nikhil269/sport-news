import 'package:flutter/material.dart';
import 'package:expandable_card/expandable_card.dart';

class ExampleApp extends StatefulWidget {
  @override
  _ExampleAppState createState() => _ExampleAppState();
}

class _ExampleAppState extends State<ExampleApp> {
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
            padding: EdgeInsets.only(top: 0, left: 20, right: 20),
            minHeight: 225,
            maxHeight: 700,
            backgroundColor: Colors.white,
            hasRoundedCorners: true,
            hasHandle: false,
            hasShadow: true,
            children: <Widget>[
              Center(
                child: Text(
                  "______",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Button("Home"),
                    SizedBox(
                      width: 10,
                    ),
                    Button("News"),
                    SizedBox(
                      width: 10,
                    ),
                    Button("InterViews"),
                    SizedBox(
                      width: 10,
                    ),
                    Button("Gallary"),
                    SizedBox(
                      width: 10,
                    ),
                    Button("Update"),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              News(
                  "https://thumbor.forbes.com/thumbor/960x0/https%3A%2F%2Fspecials-images.forbesimg.com%2Fdam%2Fimageserve%2F8a01620b19974f2d85cbf4d6c8acc64c%2F960x0.jpg%3Ffit%3Dscale",
                  "Frank transfer news\nlive: Ndombele deal \nclose to completion"),
              News("https://i.ytimg.com/vi/poWCB9DCP3g/maxresdefault.jpg",
                  "There are no More\nlive: Ndombele deal \nclose to completion"),
              News(
                  "https://www.telegraph.co.uk/content/dam/football/2017/06/15/TELEMMGLPICT000130231477_trans_NvBQzQNjv4BqDQVK81QMLSkr-IuGRMUJHMBlQYzciaw9G4kdmm88BzI.jpeg?imwidth=450",
                  "Spurs transfer news\nlive: Ndombele deal \nclose to completion"),
              News(
                  "https://d2x51gyc4ptf2q.cloudfront.net/content/uploads/2019/07/02110159/James-Milner-Aaron-Ramsey-Football365-469x245.jpg",
                  "Spurs transfer news\nlive: Ndombele deal \nclose to completion"),
              News(
                  "https://cdn1.tvnz.co.nz/content/dam/images/news/2019/06/25/190330PhoenixvJetsRV_47.jpg.hashed.d2128786.desktop.story.card.jpg",
                  "Spurs transfer news\nlive: Ndombele deal \nclose to completion"),
            ],
          ),
        ),
      ),
    );
  }
}

Widget Button(var tittle) {
  return RaisedButton(
    shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(30.0)),
    onPressed: () {},
    child: Text(
      tittle,
      style: TextStyle(
          fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
    ),
    color: Colors.redAccent,
  );
}

Widget News(var link, var tittle) {
  return Card(
    elevation: 2.0,
    child: Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
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
        Container(
          child: Text(
            tittle,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
  );
}
