

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w= MediaQuery.of(context).size.width;
    double h= MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.blue),
          onPressed: () {
            // passing this to our root
            Navigator.of(context).pop();
          },
        ),
      ),
      //resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15,),
            Container(

              width:w*0.67,
              height:h*0.3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'Assets/Rectangle 30.png'
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
                    'Forgot Password?',
                    style :TextStyle(
                      fontSize: 30,
                      fontWeight:FontWeight.normal,
                    ),

                  ),
                  Text(
                    'Enter your email Account to reset Password',
                    style :TextStyle(
                      fontSize: 18,
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

                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        //iconColor: Colors.grey,
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
                  'Reset',
                  style :TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),

                ),
              ),

            ),
            SizedBox(height: w*0.2),

          ],
        ),
      ),
    );
  }
}
