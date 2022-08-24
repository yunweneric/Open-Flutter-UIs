import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class OnboadingScreen extends StatefulWidget {
  const OnboadingScreen({Key? key}) : super(key: key);

  @override
  State<OnboadingScreen> createState() => _OnboadingScreenState();
}

class _OnboadingScreenState extends State<OnboadingScreen> {
  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children: <Widget>[
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(EvaIcons.arrowBack),
                    Text("Skp"),
                  ],
                ),
                Image.asset("assets/images/illus3.png"),
                Text("Buy Tickets"),
                Text("Get your tickets"),
                Row(
                  children: [
                    Container(),
                    CircleAvatar(
                      child: Icon(EvaIcons.arrowRight),
                    )
                  ],
                )
              ],
            ),
          ),
          Center(
            child: Text('Second Page'),
          ),
          Center(
            child: Text('Third Page'),
          )
        ],
      ),
    );
  }
}
