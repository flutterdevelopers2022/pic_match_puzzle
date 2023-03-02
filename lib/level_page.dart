import 'package:flutter/material.dart';
import 'package:pic_match_puzzle/game_play.dart';
import 'package:pic_match_puzzle/main.dart';

class Level_page extends StatefulWidget {
  int cur_level;

  Level_page(this.cur_level);

  @override
  State<Level_page> createState() => _Level_pageState();
}

class _Level_pageState extends State<Level_page> {
  int pageg = 0;
  PageController controller = PageController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = PageController(
        viewportFraction: 1 / 1.2, initialPage: pageg, keepPage: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LevelPage"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: PageView.builder(
          onPageChanged: (value) {
            setState(() {
              pageg = value;
            });
          },
          controller: controller,

          // physics: PageScrollPhysics(),
          pageSnapping: true,
          itemCount: 4,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: 150,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  border: Border.all(width: 5, color: Colors.green),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Match ",
                        style: TextStyle(fontSize: 30),
                      ),
                      margin: EdgeInsets.all(10),
                    ),
                    Divider(
                      thickness: 10,
                      color: Colors.green,
                    ),
                    Expanded(
                        child: ListView.builder(
                      itemCount: 30,
                      itemBuilder: (context, index) {

                          return InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return Game_Play(index);
                                },
                              ));
                            },
                            child: UnconstrainedBox(child: Container(
                              margin: EdgeInsets.symmetric(vertical: 20),
                              child: Center(
                                child: Text(
                                  "Level ${index + 1} ",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              width: 180,
                              height: 50,
                              color: Color(0xff009688),

                            )),
                          );


                      },
                    ))
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
