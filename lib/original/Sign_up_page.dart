
import 'package:flutter/material.dart';
import 'package:kar_amad/original/auth_controller.dart';

import 'login_page.dart';
class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var nameController = TextEditingController();
    var confirmPasswordController = TextEditingController();
    var phoneController = TextEditingController();
    List images=[
      "g.png",
      "t.png",
      "f.png"
    ];


    double w= MediaQuery.of(context).size.width;
    double h= MediaQuery.of(context).size.height;
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [

            SizedBox(height:30),
            Container(
              margin: const EdgeInsets.only(left: 20, right:20),
              width: w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Lets Get Started',
                    style :TextStyle(
                      fontSize: 30,
                      fontWeight:FontWeight.normal,
                    ),

                  ),
                  Text(
                    'create an account to get all features',
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
                      controller: emailController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        hintText: 'Email',
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
                      controller: phoneController,

                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone),
                        hintText: 'Phone',
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
                      obscureText: true,
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
                      controller: confirmPasswordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.fingerprint),
                        hintText: 'Confirm Password',
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
                      /*Text(
                        'Forgot Password?',
                        style :TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                        ),

                      ),*/
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 50,),
            GestureDetector(
              onTap:(){
                AuthController.instance.register(emailController.text.trim(), passwordController.text.trim(),);
                    //confirmPasswordController.text.trim(),nameController.text.trim(),phoneController.text.trim());
              },
              child: Container(

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
                    'Sign Up',
                    style :TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),

                  ),
                ),

              ),
            ),
            SizedBox(height: w*0.2),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(text: TextSpan(
                  text:"Already have an Account?",
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

                      'Sign In',
                      style:TextStyle(
                        color:Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      )
                  ), onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
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
