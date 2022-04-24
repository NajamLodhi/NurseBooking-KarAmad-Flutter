import 'package:flutter/cupertino.dart';

class buildPage extends StatefulWidget {

  const buildPage({Key? key}) : super(key: key);

  @override
  _buildPageState createState() => _buildPageState();
}

class _buildPageState extends State<buildPage> {

  final controller = PageController();
  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
