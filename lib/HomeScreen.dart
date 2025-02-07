import 'package:flutter/material.dart';
//import 'package:lucide_icons/lucide_icons.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          elevation: 0,
          flexibleSpace: Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20), // Add padding
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF6A1B91), Color(0xFFD500F9)],
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.person_2_rounded, color: Colors.white, size: 40),
                    Text(
                      "Sobet Ternak",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    Icon(Icons.facebook_rounded, color: Colors.white, size: 40),
                  ],
                ),],),
          ),),),
      body: Column(
        children: [
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(5, (index) {
                    return Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/1.jpg'),
                          radius: 20,
                        ),
                        Text("\\${10 + index}")
                      ],);
                  }),),
                Divider(color: Colors.black),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [Icon(Icons.thumb_up), SizedBox(width: 5), Text("Like")],
                    ),
                    Row(
                      children: [Icon(Icons.comment), SizedBox(width: 5), Text("Comment")],
                    ),
                    Row(
                      children: [Icon(Icons.share), SizedBox(width: 5), Text("Share")],
                    ),
                  ],
                ),
              ],),),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Latest Product", style: TextStyle(fontWeight: FontWeight.bold)),
                Text("All View", style: TextStyle(color: Colors.blue)),
              ],
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(5, (index) {
              return Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/2.jpg'),
                    radius: 25,
                  ),
                  Text("\\${20 + index}")
                ],
              ); }),),
          SizedBox(height: 20),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.person_3_rounded, color: Colors.black, size: 50),
              Icon(Icons.more_vert),
            ],
          ),),
          SizedBox(height: 10),
          Container(
            height: 100,
            width: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/3.jpg",
                ),
                 fit: BoxFit.cover,
              ),
            ),),
        ],),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.calculate), label: "Calculator"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Bell"),
        ],
      ), );}}

