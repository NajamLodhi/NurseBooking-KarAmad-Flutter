import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kar_amad/original/login_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final controller = PageController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: PageView(
          controller: controller,
          children: [
            Container(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: h * 0.1),
                    Image.asset(
                      "Assets/Group 17.png",
                      fit: BoxFit.cover,
                      width: w * 0.7,
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Container(
                        padding: EdgeInsets.only(left: 30, right: 30),
                        child: const Center(
                            child: Text(
                          'Discover Medical Staff near you',
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                      ),
                    ),
                    Center(
                      child: Container(
                        padding: EdgeInsets.only(left: 30, right: 30),
                        child: const Center(
                            child: Text(
                          'Find the best medical staff you want by your location',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                          ),
                        )),
                      ),
                    )
                  ],
                )
                //
                // const Center(child: Text('Page 1'))

                ),
            Container(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: h * 0.1),
                    Image.asset(
                      "Assets/Group 18.png",
                      fit: BoxFit.cover,
                      width: w * 0.7,
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Container(
                        padding: EdgeInsets.only(left: 30, right: 30),
                        child: const Center(
                            child: Text(
                          'Make a Schedule Easily',
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                      ),
                    ),
                    Center(
                      child: Container(
                        padding: EdgeInsets.only(left: 30, right: 30),
                        child: const Center(
                            child: Text(
                          'Choose the time you want to make an appointment',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                          ),
                        )),
                      ),
                    )
                  ],
                )
                //
                // const Center(child: Text('Page 1'))

                ),
            Container(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: h * 0.1),
                    Image.asset(
                      "Assets/Group 22.png",
                      fit: BoxFit.cover,
                      width: w * 0.7,
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Container(
                        padding: EdgeInsets.only(left: 30, right: 30),
                        child: const Center(
                            child: Text(
                          'Enjoy treatment directly',
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                      ),
                    ),
                    Center(
                      child: Container(
                        padding: EdgeInsets.only(left: 30, right: 30),
                        child: const Center(
                            child: Text(
                          'Enjoy handling directly from our staff without having to wait long',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                          ),
                        )),
                      ),
                    )
                  ],
                )
                //
                // const Center(child: Text('Page 1'))

                ),
            /*Container(
                color: Colors.white,
                child: const Center(child: Text('Page 2'))
            ),
            Container(
                color: Colors.white,
                child: const Center(child: Text('Page 3'))
            ),*/
          ],
        ),
      ),
      bottomSheet: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        height: 80,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
            padding: EdgeInsets.only(left: 20),
            child: SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: WormEffect(
                spacing: 8,
                dotColor: Colors.grey,
                activeDotColor: Colors.blue,
              ),
              onDotClicked: (index) => controller.animateToPage(
                index,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeIn,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 20, bottom: 8),
            child: TextButton(
              onPressed: () {
                if (controller.page == 2.0) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                } else {
                  controller.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut);
                }
              },
              child: const Text(
                "Next",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
