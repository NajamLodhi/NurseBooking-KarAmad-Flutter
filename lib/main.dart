/*import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kar_amad/Sign_up_page.dart';
import 'package:kar_amad/forgot_password.dart';
import 'package:kar_amad/on_boarding.dart';
import 'package:get/get.dart';
import 'auth_controller.dart';
import 'login_page.dart';

Future<void> main() async {


  WidgetsFlutterBinding.ensureInitialized();
  //FirebaseApp app = await Firebase.initializeApp().then((value)=>Get.put(AuthController()));
  await Firebase.initializeApp().then((value)=>Get.put(AuthController()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kar Amad',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}
*/
//import 'dart:js';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:kar_amad/MainScreens/BottomNav.dart';
import 'package:kar_amad/MainScreens/DoctorProfile.dart';
import 'package:kar_amad/screens/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kar_amad/screens/on_boarding.dart';
import 'package:responsive_framework/responsive_framework.dart';

Future<void> main() async {
  User? user;
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(GetMaterialApp(
    builder: (context, widget) => ResponsiveWrapper.builder(
      ClampingScrollWrapper.builder(context, widget!),
      breakpoints: const [
        ResponsiveBreakpoint.resize(350, name: MOBILE),
        ResponsiveBreakpoint.autoScale(600, name: TABLET),
        ResponsiveBreakpoint.resize(800, name: DESKTOP),
        ResponsiveBreakpoint.autoScale(1700, name: "XL"),
      ],
    ),
    title: 'Kar Amad',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  User? user;
  late String uid = FirebaseAuth.instance.currentUser!.uid;
  String? PhoneNumber;

  void _fetchUserData() {
    try {
      FirebaseFirestore.instance.collection('users').doc(uid).get().then((ds) {
        if (ds.exists) {
          setState(() {
            PhoneNumber = ds.data()?['phone'];
          });
        }
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    _fetchUserData();
    user = FirebaseAuth.instance.currentUser;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<User>(
        //future:
        builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
      if (user != null) {
        // this is your user instance
        /// is because there is user already logged
        return Bottom_Nav();
      }

      /// other way there is no user logged.
      return OnBoardingPage();
    });
  }
}
