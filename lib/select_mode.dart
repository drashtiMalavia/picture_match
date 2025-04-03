import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:picture_match/data.dart';
import 'package:picture_match/levelPageNormal.dart';
import 'package:picture_match/main.dart';

import 'levelPageHard.dart';
import 'levelPageNoTimeLimit.dart';


class select_mode extends StatefulWidget {
  const select_mode({super.key});

  @override
  State<select_mode> createState() => _select_modeState();
}

class _select_modeState extends State<select_mode> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
        canPop: false,
        onPopInvoked: (didPop) {
          if(!didPop){
            Navigator.pop(exit(0));
          }
        },
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            foregroundColor: Colors.white,
            title: Row(
              children: [
                Text("Select mode",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),

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
              Container(
                margin: EdgeInsets.only(top: 190,left: 110),
                height: 238,
                width: 200,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(132,255,255,10),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.teal,width: 5)
                ),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          Data.levelStatusNotimelimit.clear();
                          for(int i=1;i<=60;i++){
                            Data.levelStatusNotimelimit.add(Preference.getLevlStatusNotimelimit(i));
                          }
                          Navigator.push(context,MaterialPageRoute(builder: (context) {
                            Data.notimelimit=1;
                            Data.normal=0;
                            Data.hard=0;
                            return level_page_notimelimit();
                          },));
                        });
                      },
                      child: Container(
                        height: 60,
                        width: 170,
                        color: Colors.teal,
                        child: Text("NO TIME LIMIT",style: TextStyle(color: Colors.white,fontSize: 20),),
                        alignment: Alignment.center,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          Data.levelStatusNormal.clear();
                          for(int i=1;i<=60;i++){
                            Data.levelStatusNormal.add(Preference.getLevlStatusNormal(i));
                          }
                          Navigator.push(context,MaterialPageRoute(builder: (context) {
                            Data.notimelimit=0;
                            Data.normal=1;
                            Data.hard=0;
                            return level_page_Normal();
                          },));
                        });
                      },
                      child: Container(
                        height: 60,
                        width: 170,
                        color: Colors.teal,
                        alignment: Alignment.center,
                        child: Text("NORMAL",style: TextStyle(color: Colors.white,fontSize: 20),),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          Data.levelStatusHard.clear();
                          for(int i=1;i<=60;i++){
                            Data.levelStatusHard.add(Preference.getLevlStatusHard(i));
                          }
                          Navigator.push(context,MaterialPageRoute(builder: (context) {
                            Data.notimelimit=0;
                            Data.normal=0;
                            Data.hard=1;
                            return level_page_hard();
                          },));
                        });
                      },
                      child: Container(
                        height: 60,
                        width: 170,
                        color: Colors.teal,
                        alignment: Alignment.center,
                        child: Text("HARD",style: TextStyle(color: Colors.white,fontSize: 20),),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 490,left: 130),
                height: 80,
                width: 150,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(132,255,255,10),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.teal,width: 5)
                ),
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      width: 120,
                      color: Colors.teal,
                      child: Text("REMOVE ADS",style: TextStyle(color: Colors.white,fontSize: 12),),
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 650,left: 60),
                height: 80,
                width: 300,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(132,255,255,10),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.teal,width: 5)
                ),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 40,
                      width: 130,
                      color: Colors.teal,
                      child: Text("SHARE",style: TextStyle(color: Colors.white,fontSize: 12),),
                      alignment: Alignment.center,
                    ),
                    Container(
                      height: 40,
                      width: 130,
                      color: Colors.teal,
                      alignment: Alignment.center,
                      child: Text("MORE GAMES",style: TextStyle(color: Colors.white,fontSize: 12),),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}
