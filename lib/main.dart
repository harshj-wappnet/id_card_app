import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HarshCard(),
  ));
}

class HarshCard extends StatefulWidget {
  @override
  State<HarshCard> createState() => _HarshCardState();
}

class _HarshCardState extends State<HarshCard> {
  String? course;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Harsh ID CARD'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            course = "BE(I.T)";
          });
        },
        child: Icon(Icons.remove_red_eye),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
                child: CircleAvatar(
              backgroundImage: AssetImage('assets/Harsh_Jani_Photo.jpg'),
              radius: 45.0,
            )),
            Divider(
              height: 40.0,
              color: Colors.grey[600],
            ),
            Text(
              'NAME',
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Harsh Jani',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'EDUCATION',
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '$course',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  'harshj.wappnet@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 14.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.phone,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  '+91 7567339789',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 14.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
