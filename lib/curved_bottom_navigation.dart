import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CurvedBottomNavigation extends StatefulWidget {
  const CurvedBottomNavigation({Key? key}) : super(key: key);

  @override
  _CurvedBottomNavigationState createState() => _CurvedBottomNavigationState();
}

class _CurvedBottomNavigationState extends State<CurvedBottomNavigation> {
  String text="Home Page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Curved Bottom Navigation"),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blueAccent,
        items: const <Widget>[
          Icon(Icons.add, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.compare_arrows, size: 30),
        ],
        onTap: (index) {
          setState(() {
            if(index==0) {
              text="Home Page";
            } else if(index == 1){
              text ="Notifications Page";
            }else {
              text = "tes page";
            }
          });
        },
      ),
      body: Container(width: double.infinity,height: double.infinity, child:Center(child: Text(text)),color: Colors.blueAccent),
    );
  }
}
