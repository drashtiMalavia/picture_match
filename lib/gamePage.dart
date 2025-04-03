//game page
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:picture_match/data.dart';
import 'package:picture_match/main.dart';
import 'package:picture_match/levelPageNormal.dart';
import 'package:picture_match/select_mode.dart';

import 'levelPageHard.dart';
import 'levelPageNoTimeLimit.dart';

class game_page extends StatefulWidget {
  int index;
  game_page(this.index, {super.key});


  @override
  State<game_page> createState() => _game_pageState();
}

class _game_pageState extends State<game_page> with TickerProviderStateMixin{//tickerprovider widget ne per second e update karva mate//with keyword same as implements into java
  late Animation animation;//for animation/time/progressor
  late AnimationController controller;//animation controller
  int go=0,grid=0,r=0,win=0;
  List tempImgList=[],tap=[];
  int tapImage=1,firstPicIndex=0,animationTime=6;
  late String firstPic,secondPic,timer1="running";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller=AnimationController(vsync: this,duration: Duration(seconds: 5));//controller initialize
    animation=Tween(begin: 1.00,end: 0.00).animate(controller);//animation obj initialize
    controller.forward();//controller aagal jay
    Future.delayed(Duration.zero,(){
      showDialog(context: context, builder: (context) {
        return PopScope(
          canPop: false,
          onPopInvoked: (didPop) {
            if(!didPop){
              Future.delayed(Duration.zero,(){
                Container();
              });
            }
          },
          child: AlertDialog(
            shape: Border.all(style: BorderStyle.solid),
            title: Container(
              height: 50,
              width: 750,
              color: Colors.teal,
              child: Text("TIME:NO TIME LIMIT",
                style: TextStyle(color: Colors.white),
              ),
              alignment: Alignment.center,
            ),
            titlePadding: EdgeInsets.only(),
            actions: [
              Column(
                children: [
                  Container(
                    color: Colors.white,
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(top: 30),
                    child: Text("YOU HAVE 5 SECONDS TO MEMORIZE ALL IMAGES"),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.pop(context);
                        go=1;
                        grid=1;
                        // for(int i=0;li.length!=((widget.index==1 || widget.index==2 || widget.index==3)?6:(widget.index==4 || widget.index==5 || widget.index==6)?8:10);i++)
                        // {
                        //   r=Randomm.nextInt((widget.index==1 || widget.index==2 || widget.index==3)?6:(widget.index==4 || widget.index==5 || widget.index==6)?8:10)+1;
                        //   if(!li.contains(r))
                        //     {
                        //       li.add(r);
                        //     }
                        // }
                        // print(li);
                        // for(int j=0;li2.length!=((widget.index==1 || widget.index==2 || widget.index==3)?6:(widget.index==4 || widget.index==5 || widget.index==6)?8:10);j++)
                        // {
                        //   r=Randomm.nextInt((widget.index==1 || widget.index==2 || widget.index==3)?6:(widget.index==4 || widget.index==5 || widget.index==6)?8:10)+1;
                        //   if(!li2.contains(r))
                        //   {
                        //     li2.add(r);
                        //   }
                        // }
                        // print(li2);
                        // li.addAll(li2);
                        // print(li);
                        Data.allImgList.shuffle();//shuffle function(list nu) all index ne aadi avli karine new list banavi aape
                        tempImgList=Data.allImgList.getRange(0, (widget.index==1 || widget.index==2 || widget.index==3)?6:(widget.index==4 || widget.index==5 || widget.index==6)?8:10).toList();//list mathi 0 to 6 number ni index joie chie
                        tempImgList.addAll(Data.allImgList.getRange(0, (widget.index==1 || widget.index==2 || widget.index==3)?6:(widget.index==4 || widget.index==5 || widget.index==6)?8:10).toList());
                        tempImgList.shuffle();//eni index suffel karavani jethi e array aado avlo thay jay (random)
                        tap=List.filled(tempImgList.length, 0);
                        print("TempImgList suffle=$tempImgList");

                        controller=AnimationController(vsync: this,duration: Duration(seconds: 5));
                        animation=Tween(begin: 6.00,end: 0.00).animate(controller);
                        controller.forward();
                        controller.addListener(() {
                          setState(() {
                            if(animation.isCompleted)
                            {
                              print("Animation1 Completed");
                              timer1="finished";
                              grid=0;
                              animationTime = Data.notimelimit==1?100:30;
                              controller=AnimationController(vsync: this,duration: Duration(seconds: animationTime));
                              animation=Tween(begin: 0.00,end: animationTime.toDouble()).animate(controller);
                              controller.forward(); //controller aagal vadharva mate
                              controller.addListener(() {//controller mathi value receive karva mate
                                setState(() {
                                  if(animation.isCompleted)
                                  {
                                    print("Animation2 Completed");
                                  }
                                  if(win==tempImgList.length/2){
                                    controller.stop();
                                  }
                                });
                              },);
                            }
                          });
                        },);

                      });
                    },
                    child: Container(
                      height: 30,
                      width: 100,
                      color: Colors.teal,
                      margin: EdgeInsets.only(top: 50),
                      alignment: Alignment.center,
                      child: Text("GO",style: TextStyle(color: Colors.white,fontSize: 20),),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },);
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Row(
            children: [
              Text("Time:${animation.value.toInt()}/0",style: TextStyle(color: Colors.white,fontSize: 20),),
              Container(
                margin: EdgeInsets.only(left: 80),
                child: Text("${Data.notimelimit==1?'NO TIME LIMIT':Data.normal==1?'NORMAL':Data.hard==1?'HARD':''}",style: TextStyle(fontSize: 15,color: Colors.white),),
              ),
              Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Icon(Icons.volume_up,color: Colors.white,)
              ),
              Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Icon(Icons.more_vert,color: Colors.white,)
              ),
            ],
          ),
        ),
        body: go==1?
        Stack(
          children: [
            Container(
              color: Color.fromRGBO(132,255,255,200),
            ),
            Container(
              height: 5,
              margin: EdgeInsets.only(left: 10,right: 10,top: 70),
              color: Colors.grey[500],
              child: Data.notimelimit!=1?(timer1=="running"?LinearProgressIndicator(value: (1-controller.value),):LinearProgressIndicator(value: controller.value,)):null,
            ),
            Container(
              margin: EdgeInsets.only(top: 150,left: 10,right: 10),
              child: GridView.builder(
                itemCount: tempImgList.length,
                primary: false,
                reverse: false,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: (widget.index==1 || widget.index==2 || widget.index==3)?3:4,
                    crossAxisSpacing: 1,
                    mainAxisSpacing: 1,
                    childAspectRatio: 1
                ), itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    if(tapImage==3){
                      setState(() {
                        tapImage=1;
                      });
                    }
                    else{
                      setState(() {
                        if(grid==0){
                          tap[index]=1;
                          if(tapImage==1)
                          {
                            firstPicIndex=index;
                            tapImage++;
                            firstPic=tempImgList[index];
                            print(tapImage);
                          }
                          else if(tapImage==2){
                            secondPic=tempImgList[index];
                            tapImage++;
                            print(tapImage);

                            Future.delayed(Duration(milliseconds: 1000),() {
                              tapImage=1;
                              if(firstPic.compareTo(secondPic)!=0){
                                tap[index]=0;
                                tap[firstPicIndex]=0;
                                firstPic='';
                                secondPic='';
                              }
                              else {
                                win++;
                              }
                              if(win==(tempImgList.length/2)){
                                showDialog(context: context, builder: (context) {
                                  return AlertDialog(
                                    shape: Border.all(style: BorderStyle.solid),
                                    title: Container(
                                      height: 30,
                                      width: 750,
                                      color: Colors.teal,
                                      child: Text("  Congratulations!! ",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      alignment: Alignment.centerLeft,
                                    ),
                                    titlePadding: EdgeInsets.only(),
                                    backgroundColor: Colors.teal,
                                    actions: [
                                      Column(
                                        children: [
                                          Container(
                                            height: 50,
                                            color: Colors.white,
                                            alignment: Alignment.topLeft,
                                            child: Text('You win this level!!'),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) {
                                                  if(Data.normal==1){
                                                    Preference.setTimeNormal(widget.index,animation.value.toInt());
                                                    Preference.setLevelStatusNormal(widget.index);
                                                    Data.levelStatusNormal.clear();
                                                    for(int i=1;i<=60;i++){
                                                      Data.levelStatusNormal.add(Preference.getLevlStatusNormal(i));
                                                    }
                                                    return level_page_Normal();
                                                  }
                                                  else if(Data.hard==1){
                                                    Preference.setTimeHard(widget.index,animation.value.toInt());
                                                    Preference.setLevelStatusHard(widget.index);
                                                    Data.levelStatusHard.clear();
                                                    for(int i=1;i<=60;i++){
                                                      Data.levelStatusHard.add(Preference.getLevlStatusHard(i));
                                                    }
                                                    return level_page_hard();
                                                  }
                                                  else if(Data.notimelimit==1){
                                                    Preference.setTimeNotimelimit(widget.index,animation.value.toInt());
                                                    Preference.setLevelStatusNotimelimit(widget.index);
                                                    Data.levelStatusNotimelimit.clear();
                                                    for(int i=1;i<=60;i++){
                                                      Data.levelStatusNotimelimit.add(Preference.getLevlStatusNotimelimit(i));
                                                    }
                                                    return level_page_notimelimit();
                                                  }
                                                  return select_mode();
                                                },));
                                              });
                                            },
                                            child: Container(
                                              height: 20,
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
                              }
                            },);
                          }
                        }
                        else{
                          tap[index]=0;
                        }
                      });
                    }
                  },
                  child: Container(
                      height: 200,
                      width: 150,
                      decoration:
                      BoxDecoration(
                        color: grid==1 || tap[index]==1?Colors.white:Colors.teal,
                        image: grid==1 || tap[index]==1?DecorationImage(image: AssetImage('images/${tempImgList[index]}')):null,
                        border: Border.all(color: Colors.black,),
                        borderRadius: BorderRadius.circular(10),
                      )
                  ),
                );
              },),
            )
          ],
        ):
        Container(),
      ),
    );
  }
}
