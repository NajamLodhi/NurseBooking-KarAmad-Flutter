import 'package:flutter/material.dart';

import 'ProfileMenu.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Account',
          style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white70,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60),
          child: Column(
            children: [
              SizedBox(
                height: 115,
                width: 115,
                child: Stack(
                  fit: StackFit.expand,
                  overflow: Overflow.visible,
                  children: [
                    CircleAvatar(
                      radius: 73,
                      backgroundColor: Colors.blue,
                      child: ClipOval(
                        child: new SizedBox(
                          width: 125,
                          height: 125,
                          child: Image.asset("Assets/icons/account-icon.jpg"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              ProfileMenu(
                icon: "Assets/icons/User Icon.svg",
                text: "My Account",
                press: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => my_account()));
                },
              ),
              ProfileMenu(
                icon: "assets/icons/payment-method.svg",
                text: "Payment Method",
                press: () {},
              ),
              ProfileMenu(
                icon: "Assets/icons/support.svg",
                text: "Support",
                press: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => support()));
                },
              ),
              ProfileMenu(
                icon: "Assets/icons/terms-and-conditions.svg",
                text: "Terms & Conditions",
                press: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => termAndCondition()));
                },
              ),
              ProfileMenu(
                icon: "Assets/icons/logout.svg",
                text: "Logout",
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
