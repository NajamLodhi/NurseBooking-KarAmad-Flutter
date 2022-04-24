import 'package:flutter/material.dart';

class DoctorProfile extends StatefulWidget {
  const DoctorProfile({Key? key}) : super(key: key);

  @override
  State<DoctorProfile> createState() => _DoctorProfileState();
}

class _DoctorProfileState extends State<DoctorProfile> {
  @override
  Widget build(BuildContext context) {
    double w= MediaQuery.of(context).size.width;
    double h= MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.chevron_left, color: Colors.blue),
          iconSize: 50,
          onPressed: () {
            // passing this to our root
            Navigator.of(context).pop();
          },


        ),
      ),
      body:SingleChildScrollView(
        child:
        Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.grey[200],
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: h*0.032,
                        width: w*0.06,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color:Colors.white,

                        ),

                        child: Icon(
                          Icons.chat_bubble,
                          color: Colors.blue,
                          size: 20.0,
                          semanticLabel: 'Text to announce in accessibility modes',
                        ),
                      ),
                      SizedBox(width: 20,),
                      Center(
                        child: Container(
                          width:w*0.2,
                          height:h*0.1,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              image: DecorationImage(
                                image: AssetImage(
                                    "Assets/Group 17.png"
                                ),
                                fit: BoxFit.cover,)
                          ),
                        ),
                      ),
                      SizedBox(width: 20,),
                      Container(
                        height: h*0.032,
                        width: w*0.06,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color:Colors.white,

                        ),


                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 24.0,
                          semanticLabel: 'Text to announce in accessibility modes',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Barbara Haque",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),


                          ),
                          Icon(
                            Icons.check_circle,
                            color: Colors.blue,
                            size: 14.0,
                            semanticLabel: 'Text to announce in accessibility modes',
                          ),
                        ],
                      )
                  ),
                  SizedBox(height: 3,),
                  Container(
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Dermatology",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),


                          ),
                      Text(
                        " - 20 Years of Experience",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey
                        ),)

                        ],
                      ),

                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            "72",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,

                            ),),
                          Text(
                            "Rating",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey
                            ),),
                        ],
                      ),
                      SizedBox(width: 55,),
                      Column(
                        children: [
                          Text(
                            "65",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,

                            ),),
                          Text(
                            "Reviews",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey
                            ),),
                        ],
                      ),
                      SizedBox(width: 55,),
                      Column(
                        children: [
                          Text(
                            "386",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,

                            ),),
                          Text(
                            "Patients",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey
                            ),),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height:20)
                ],
              ),
            ),
            // SizedBox(height: h*0.1),

            

          ],
        )
      )
    );
  }
}
