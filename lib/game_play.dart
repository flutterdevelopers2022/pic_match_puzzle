import 'package:flutter/material.dart';
import 'package:pic_match_puzzle/main.dart';

import 'level_page.dart';

class Game_Play extends StatefulWidget {
  int cur_level;
  Game_Play(this.cur_level);

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
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              setState(() {

                widget.cur_level++;
              });
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return Home();
                },
              ));
            },
            child: Text("Submit")),
      ),
    );
  }
}
