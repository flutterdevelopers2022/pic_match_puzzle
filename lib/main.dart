import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pic_match_puzzle/level_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main()
{
  runApp(MaterialApp(home: Home(),));
}
class Home extends StatefulWidget {

  static SharedPreferences? prefs;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int cur_level=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    get();
  }
  get()
  async {
    Home.prefs = await SharedPreferences.getInstance();
    setState(() {
      cur_level=Home.prefs!.getInt("levelNo") ?? 0;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: ElevatedButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Level_page(cur_level);
          },));
    },
    child: Text("Play")),),);
  }
}
