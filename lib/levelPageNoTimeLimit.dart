import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:picture_match/gamePage.dart';
import 'package:picture_match/select_mode.dart';

import 'data.dart';
import 'main.dart';

class level_page_notimelimit extends StatefulWidget {
  const level_page_notimelimit({super.key});

  @override
  State<level_page_notimelimit> createState() => _level_page_notimelimitState();
}

class _level_page_notimelimitState extends State<level_page_notimelimit> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        if(!didPop){
          Future.delayed(Duration.zero,() {
            Navigator.push(context,MaterialPageRoute(builder: (context) {
              return select_mode();
            },));
          },);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
          title: Row(
            children: [
              Text("Select level",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
              Container(
                  margin: EdgeInsets.only(left: 70),
                  child: Text('NO TIME LIMIT',style: TextStyle(color: Colors.white,fontSize: 20),)
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            Container(
              color: Color.fromRGBO(132,255,255,200),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Transform.rotate(//container k game te widget ne rotet karva mate..
                      angle: -0.1,//- ma aapo to right side rotate thay ne + ma left side..
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          image: DecorationImage(image: AssetImage('images/gato.png')),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(1),//Bar black color ni border ni opactity down karva mate..
                              blurRadius: 6.0,//blur black border ni width set karva mate
                            ),
                            BoxShadow(
                              color: Colors.black.withOpacity(1),
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        margin: EdgeInsets.only(top: 100,left: 20,right: 40),
                      ),
                    ),
                    Transform.rotate(
                      angle: 0.1,
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          image: DecorationImage(image: AssetImage('images/perro.png')),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(1),
                              blurRadius: 6.0,
                            ),
                            BoxShadow(
                              color: Colors.black.withOpacity(1),
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        margin: EdgeInsets.only(top: 100,right: 30),
                      ),
                    ),
                    Transform.rotate(
                      angle: 0.1,
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          image: DecorationImage(image: AssetImage('images/paloma.png')),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(1),
                              blurRadius: 6.0,
                            ),
                            BoxShadow(
                              color: Colors.black.withOpacity(1),
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        margin: EdgeInsets.only(top: 100),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Transform.rotate(
                      angle: 0.1,
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          image: DecorationImage(image: AssetImage('images/cerezas.png')),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(1),
                              blurRadius: 6.0,
                            ),
                            BoxShadow(
                              color: Colors.black.withOpacity(1),
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        margin: EdgeInsets.only(top: 50,left: 25,right: 30),
                      ),
                    ),
                    Transform.rotate(
                      angle: -0.2,
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          image: DecorationImage(image: AssetImage('images/platano.png')),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(1),
                              blurRadius: 6.0,
                            ),
                            BoxShadow(
                              color: Colors.black.withOpacity(1),
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        margin: EdgeInsets.only(top: 40),
                      ),
                    ),
                    Transform.rotate(
                      angle: -0.1,
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          image: DecorationImage(image: AssetImage('images/trebol.png')),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(1),
                              blurRadius: 6.0,
                            ),
                            BoxShadow(
                              color: Colors.black.withOpacity(1),
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        margin: EdgeInsets.only(top: 40,left: 30),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Transform.rotate(//container k game te widget ne rotet karva mate..
                      angle: -0.12,//- ma aapo to right side rotate thay ne + ma left side..
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          image: DecorationImage(image: AssetImage('images/hoja_otoño.png')),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(1),//Bar black color ni border ni opactity down karva mate..
                              blurRadius: 6.0,//blur black border ni width set karva mate
                            ),
                            BoxShadow(
                              color: Colors.black.withOpacity(1),
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        margin: EdgeInsets.only(top: 30,left: 25,right: 30),
                      ),
                    ),
                    Transform.rotate(
                      angle: 0.1,
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          image: DecorationImage(image: AssetImage('images/rosa.png')),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(1),
                              blurRadius: 6.0,
                            ),
                            BoxShadow(
                              color: Colors.black.withOpacity(1),
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        margin: EdgeInsets.only(top: 30,right: 30),
                      ),
                    ),
                    Transform.rotate(
                      angle: -0.12,
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          image: DecorationImage(image: AssetImage('images/loro.png')),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(1),
                              blurRadius: 6.0,
                            ),
                            BoxShadow(
                              color: Colors.black.withOpacity(1),
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        margin: EdgeInsets.only(top: 30),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Transform.rotate(
                      angle: 0.1,
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          image: DecorationImage(image: AssetImage('images/coche.png')),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(1),
                              blurRadius: 6.0,
                            ),
                            BoxShadow(
                              color: Colors.black.withOpacity(1),
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        margin: EdgeInsets.only(top: 40,left: 25,right: 30),
                      ),
                    ),
                    Transform.rotate(
                      angle: -0.2,
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          image: DecorationImage(image: AssetImage('images/silla.png')),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(1),
                              blurRadius: 6.0,
                            ),
                            BoxShadow(
                              color: Colors.black.withOpacity(1),
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        margin: EdgeInsets.only(top: 40),
                      ),
                    ),
                    Transform.rotate(
                      angle: 0.1,
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          image: DecorationImage(image: AssetImage('images/galleta.png')),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(1),
                              blurRadius: 6.0,
                            ),
                            BoxShadow(
                              color: Colors.black.withOpacity(1),
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        margin: EdgeInsets.only(top: 40,left: 35),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              left: 0,
              top: 40,
              right: 0,
              bottom: 120,
              child: ListView.builder(
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, indexFirst) {
                  return Container(
                    height: 100,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.cyan[50],
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.teal,width: 5)
                    ),
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ListView.builder(
                      primary: false,
                      itemCount: 11,
                      itemBuilder: (context, indexSec) {
                        var levelNumber=(indexFirst*10)+indexSec;
                        if (indexSec==0) {
                          return Stack(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 55,top: 10),
                                    child: Text("${indexFirst==0?'MATCH 2':indexFirst==1?'MATCH 3':indexFirst==2?'MIRROR':indexFirst==3?'MIRROR 3':indexFirst==4?'MATCH 4':'MIRROR 4'}",
                                      style: TextStyle(
                                          color: Colors.teal,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold
                                      ),textAlign: TextAlign.center,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        showDialog(context: context, builder: (context) {
                                          return AlertDialog(
                                            shape: Border.all(style: BorderStyle.solid),
                                            title: Container(
                                              height: 50,
                                              width: 750,
                                              color: Colors.teal,
                                              child: Text("  How to play match 2",
                                                style: TextStyle(color: Colors.white),
                                              ),
                                              alignment: Alignment.centerLeft,
                                            ),
                                            titlePadding: EdgeInsets.only(),
                                            actions: [
                                              Column(
                                                children: [
                                                  Container(
                                                    color: Colors.white,
                                                    alignment: Alignment.topLeft,
                                                    child: Text("\nTap on a square to turn it over and see the picture it hides.\n\nTap on another square to turn it over too.\n\nIf the pictures match,they\'ll stay facing up,if not,both will turn over again.\n\nFind all couples."),
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        Navigator.pop(context);
                                                      });
                                                    },
                                                    child: Container(
                                                      height: 30,
                                                      width: 100,
                                                      color: Colors.teal,
                                                      margin: EdgeInsets.only(left: 180),
                                                      alignment: Alignment.center,
                                                      child: Text("OK",style: TextStyle(color: Colors.white,fontSize: 20),),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ],
                                          );
                                        },);
                                      });
                                    },
                                    child: Container(
                                      child: Icon(Icons.help_outline,color: Colors.teal,size: 30,),
                                      margin: EdgeInsets.only(top: 8,left: 60),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 40,left: 5,right: 5),
                                color: Colors.teal,
                                height: 3,
                                width: 220,
                              )
                            ],
                          );
                        } else {
                          return (Data.levelStatusNotimelimit[levelNumber-1]=='win')?
                          InkWell(
                            onTap: () {
                              setState(() {
                                Navigator.push(context,MaterialPageRoute(builder: (context) {
                                  return game_page(levelNumber);
                                },));
                              });
                            },
                            child: Container(
                              height: 40,
                              width: 30,
                              color: Colors.teal,
                              margin: EdgeInsets.only(top: 20,left: 20,right: 20),
                              child: Text("LEVEL ${levelNumber} ${Preference.getTimeNotimelimit(levelNumber)}s",style: TextStyle(color: Colors.white,fontSize: 20)),
                              alignment: Alignment.center,
                            ),
                          ):
                          IgnorePointer(
                            ignoring: (levelNumber!=1?(Data.levelStatusNotimelimit[levelNumber-2]=='win' && Data.levelStatusNotimelimit[levelNumber-1]=='pending'):(levelNumber==1))?false:true,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  Navigator.push(context,MaterialPageRoute(builder: (context) {
                                    return game_page(levelNumber);
                                  },));
                                });
                              },
                              child: Container(
                                height: 40,
                                width: 30,
                                color: (levelNumber!=1?(Data.levelStatusNotimelimit[levelNumber-2]=='win' && Data.levelStatusNotimelimit[levelNumber-1]=='pending'):(levelNumber==1))?Colors.teal:Colors.teal[100],
                                margin: EdgeInsets.only(top: 20,left: 20,right: 20),
                                child: Text("LEVEL ${indexSec}",style: TextStyle(color: Colors.white,fontSize: 20)),
                                alignment: Alignment.center,
                              ),
                            ),
                          );
                        }
                      },),
                  );
                },),
            ),
          ],
        ),
      ),
    );
  }
}
