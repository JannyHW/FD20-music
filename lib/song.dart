import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class Song extends StatelessWidget {
  void playSong() {
    final player = AudioCache();
    player.play('hello.mp3');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F0F1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.8,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xFFFE1483),
          ),
          onPressed: () {},
        ),
        title: Text(
          "Playing Now",
          style: TextStyle(
            color: Color(0xFFFE1483),
            fontSize: 20,
            // fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu, color: Color(0xFFFE1483)),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          Center(
            child: Container(
              height: 250,
              width: 250,
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(200)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(200),
                child: Image.asset(
                  'images/adele.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              "Hello",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              "Adele",
              style: TextStyle(fontSize: 18, color: Colors.grey.shade700),
            ),
          ),
          SizedBox(height: 50),
          Padding(
            padding: EdgeInsets.only(left: 40, right: 40),
            child: Slider(
              value: 0.2,
              onChanged: (value) {},
              activeColor: Color(0xFFFE1483),
              inactiveColor: Colors.grey.shade300,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 70, right: 70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "0.91",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
                Text(
                  "4.55",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.only(left: 110, right: 110),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                // Icon(Icons.repeat,size: 30,),
                Icon(
                  Icons.skip_previous,
                  color: Colors.grey,
                  size: 35,
                ),
                Container(
                  height: 60,
                  width: 50,
                  child: FloatingActionButton(
                    onPressed: () {
                      playSong();
                    },
                    backgroundColor: Color(0xFFFE1483),
                    child: Icon(
                      Icons.pause,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                ),
                Icon(
                  Icons.skip_next,
                  color: Colors.grey,
                  size: 35,
                ),
                // Icon(Icons.shuffle_rounded,size: 30,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
