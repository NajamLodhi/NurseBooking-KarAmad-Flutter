import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:kar_amad/MainScreens/Account.dart';
import 'package:kar_amad/MainScreens/Appointment.dart';

import 'Home.dart';

class Bottom_Nav extends StatefulWidget {
  @override
  _Bottom_NavState createState() => _Bottom_NavState();
}

class _Bottom_NavState extends State<Bottom_Nav> {
  int index = 0;

  final screens = [Home(), Appointment(), Account()];
  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(Icons.search, size: 30),
      Icon(Icons.book, size: 30),
      Icon(Icons.person, size: 30),
    ];
    return SafeArea(
      top: false,
      child: ClipRect(
        child: Scaffold(
          extendBody: true,
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              iconTheme: IconThemeData(color: Colors.white),
            ),
            child: CurvedNavigationBar(
                onTap: (index) => setState(() {
                      this.index = index;
                    }),
                index: index,
                color: Colors.blue,
                backgroundColor: Colors.transparent,
                height: 60,
                items: items),
          ),
          body: screens[index],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    //uid = FirebaseAuth.instance.currentUser!.uid;
  }
}
