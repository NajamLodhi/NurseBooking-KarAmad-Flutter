import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:kar_amad/original/login_page.dart';
import 'package:flutter/material.dart';
import '../screens/on_boarding.dart';


class AuthController extends GetxController{
  static AuthController instance = Get.find();
  late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady(){
    super.onReady();
    _user=Rx<User?>(auth.currentUser);
    _user.bindStream(auth.userChanges());
    ever(_user,_initialScreen);

  }

  _initialScreen(User? user){
    if(user==null){
      Get.offAll(()=>LoginPage());
    }else {
      Get.offAll(()=>OnBoardingPage());
    }
  }

  void register(String email,password,//confirmPassword,username,phone
      )async{

    try{
      //if (password==confirmPassword) {

        await auth.createUserWithEmailAndPassword(
            email: email, password: password);
      /*}else{
        Get.snackbar('About User', 'User message',
            backgroundColor: Colors.redAccent,
            snackPosition: SnackPosition.BOTTOM,
            titleText:  Text(
              "Account creation failed",
              style: TextStyle(
                  color:Colors.white
              ),
            ));
      }*/
    }catch(e){
       Get.snackbar('About User', 'User message',
       backgroundColor: Colors.redAccent,
           snackPosition: SnackPosition.BOTTOM,
         titleText:  Text(
           "Account creation failed",
           style: TextStyle(
             color:Colors.white
           ),
         ),
       messageText: Text(
         e.toString(),
          style: TextStyle(
            color:Colors.white
          )
       ));
    }
  }
}