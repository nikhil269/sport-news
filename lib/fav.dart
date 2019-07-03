import 'package:flutter/material.dart';
import 'package:expandable_card/expandable_card.dart';

class Fav extends StatelessWidget {
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
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Bar(Colors.pink[200], Icons.work),
                    Bar(Colors.yellowAccent[200], Icons.work),
                    Bar(Colors.blueGrey, Icons.work),
                    Bar(Colors.redAccent[200], Icons.work),
                    Bar(Colors.grey, Icons.work),
                    Bar(Colors.grey, Icons.work),
                    Bar(Colors.grey, Icons.work),
                    Bar(Colors.grey, Icons.work),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: <Widget>[
                    
                    News(),
                    News(),
                    News(),
                    News(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget Bar(var color, var icon) {
  return Container(
    child: Card(
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      elevation: 2.0,
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Icon(icon),
      ),
    ),
  );
}

Widget News() {
  return Container(
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
    //color: Color(0xffe0ffed),
    elevation: 2.0,
          child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: Container(
              child: Image.network(
                "https://www.bluffers.com/wp-content/uploads/2014/01/foot1-go.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "England 1 USA 2: USA break England hearts as defending champions book spot in World Cup finalRead more",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5,),
          Text("Tuesday | 2 Month ago",style: TextStyle(color: Colors.grey),),
          Text("Christen Press, brought in to replace the benched Megan Rapinoe, fired the Americans in front after just ten minutes with a powerful header. \nChristen Press, brought in to replace the benched Megan Rapinoe, fired the Americans in front after just ten minutes with a powerful header.",style: TextStyle(color: Colors.grey),),
        ],
      ),
    ),
  );
}
