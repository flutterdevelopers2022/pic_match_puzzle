import 'package:flutter/material.dart';

class Game_Play extends StatefulWidget {
  const Game_Play({Key? key}) : super(key: key);

  @override
  State<Game_Play> createState() => _Game_PlayState();
}

class _Game_PlayState extends State<Game_Play> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Level :"),
      ),
      body: Center(child: Text("Submit"),),
    );
  }
}
