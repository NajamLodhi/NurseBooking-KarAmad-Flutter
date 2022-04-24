
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:kar_amad/original/Sign_up_page.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {


    var nameController = TextEditingController();
    var passwordController = TextEditingController();

    final _auth = FirebaseAuth.instance;
    double w= MediaQuery.of(context).size.width;
    double h= MediaQuery.of(context).size.height;
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(

              width:w*0.7,
              height:h*0.28,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'Assets/Group 14.png'
                  ),
                  fit: BoxFit.cover,
                )
              ),

            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right:20),
              width: w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Welcome!',
                    style :TextStyle(
                      fontSize: 30,
                      fontWeight:FontWeight.normal,
                  ),

                  ),
                  Text(
                    'Log In to your Existing Account',
                    style :TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),

                  ),
                  SizedBox(height:50),
                  Container(
                    decoration:BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow:[
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 7,
                          offset: Offset(1,1),
                          color:Colors.grey.withOpacity(0.2)
                        )
                      ]
                    ),
                    child: TextField(
                      controller: nameController,


                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.login),
                        //iconColor: Colors.grey,
                        hintText: 'Enter Username',
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color :Colors.white,
                                width:1.0,
                          )
                        ),
                        /*enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color:Colors.grey
                            ,
                              width:1.0,
                          ),
                        ),*/


                        border:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(

                    decoration:BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow:[
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 7,
                              offset: Offset(1,1),
                              color:Colors.grey.withOpacity(0.2)
                          )
                        ]
                    ),
                    child: TextField(

                      controller: passwordController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.fingerprint),
                        hintText: 'Enter Password',
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color :Colors.white,
                              width:1.0,
                            )
                        ),
                        /*enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color:Colors.grey
                            ,
                              width:1.0,
                          ),
                        ),*/


                        border:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(child: Container(),),
                      Text(
                        'Forgot Password?',
                        style :TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                        ),

                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 50,),
            Container(

              width:w*0.4,
              height:h*0.05,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                  /*image: DecorationImage(
                    image: AssetImage(
                        'img/loginbtn.png'
                    ),
                    fit: BoxFit.cover,
                  )*/
                color: Colors.blue
              ),
              child: Center(
                child: Text(
                  'Sign In',
                  style :TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),

                ),
              ),

            ),
            SizedBox(height: w*0.2),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                    text: TextSpan(
                  text:"Don\'t have an Account?",
                  style: TextStyle(
                    color:Colors.grey[500],
                    fontSize: 20,
                  ),
                    /*children: [
                      TextSpan(

                          text:' Sign Up',
                          style:TextStyle(
                            color:Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          )
                      )
                    ]*/
                )),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.transparent,
                    primary: Colors.transparent
                  ),

                child:const Text(//text:  TextSpan(

                    'Sign Up',
                    style:TextStyle(
                      color:Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )
                ), onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUpPage()),
                  );
                },
                /*TextSpan(
                    text:"Don\'t have an Account?",
                    style: TextStyle(
                      color:Colors.grey[500],
                      fontSize: 20,
                    ),

                )*/),
              ],
            )
          ],
        ),
      ),
    );
  }
}
