
import 'package:fantasy_league_web/Home/News%20Feed.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Player MatchUp List.dart';

class matchUp extends StatefulWidget {
  @override
  _matchUpState createState() => _matchUpState();
}

class _matchUpState extends State<matchUp> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        toolbarHeight: 240,
        centerTitle: true,
        title:Image(image:  AssetImage("Assests/Images/matchup header large.png"),fit: BoxFit.cover,)
      ),
      backgroundColor: Color(0xffE7E2E1),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                child: ListView.builder(itemBuilder: (context,index){return MatchUpCard(
                  image: MatchUpList[index].image,
                  name: MatchUpList[index].name,
                  gamestatus: MatchUpList[index].gamestatus,
                  score: MatchUpList[index].score,
                  name2: MatchUpList[index].name2,
                  gamestatus2: MatchUpList[index].gamestatus2,
                  score2: MatchUpList[index].score2,
                  centerLetter:MatchUpList[index].centerLetter,
                );
                },itemCount: MatchUpList.length,shrinkWrap: true,scrollDirection: Axis.vertical,physics: NeverScrollableScrollPhysics(),
                ),
              ), Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text("HIGHLIGHTS",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,letterSpacing: 1)),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                height: 400,child: ListView.builder(itemBuilder:(context,index){
                return Highlights(
                  image: third[index].Image,
                );
              },
                itemCount: third.length,scrollDirection: Axis.horizontal,),
              )
            ],
          ),
        ),
      ) ,
    );
  }
}
class MatchUpCard extends StatelessWidget {
  final image,name,gamestatus, score, centerLetter, name2,gamestatus2, score2;
  MatchUpCard({this.image,this.name,this.gamestatus,this.score,this.name2,this.gamestatus2,this.score2,this.centerLetter});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 15),
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Image(image: AssetImage(this.image),width: 60,height: 60,),
              Container(
                padding: EdgeInsets.only(left: 10),
                width: 140,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text(this.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                    RichText(textAlign: TextAlign.start,
                      text: TextSpan(text: this.gamestatus,style: TextStyle(fontSize: 14,color: Colors.black,),children: <TextSpan>[
                        TextSpan(text: " M-L",style: TextStyle(fontSize: 14,color: Colors.black54,),),
                        TextSpan(text: "\n1G, 2A, 3 SOG",style: TextStyle(fontSize: 14,color: Colors.black54,),)
                      ]),
                    ),
                  ],
                ),
              ),
            ],
          ),

          Row(
            children: [
              Container(
                height: 100,
                width: 90,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              color: Colors.black,
              ),
              child: Center(child: Text(this.score,style: TextStyle(color: Colors.white,fontSize: 15),)),
              ),
              Container(
                height:100,
                color: Colors.black54,
                width: 25,
                child: Center(child: Text(this.centerLetter,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),),
              ),
              Container(
                height: 100,
                width: 90,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                  color: Colors.black,
                ),

                child: Center(child: Text(this.score2,style: TextStyle(color: Colors.white,fontSize: 15),)),
              ),
            ],
          ),
          Row(
            children: [

              Container(
                width: 140,
                padding: EdgeInsets.only(right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [

                    Text(this.name2,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                    RichText(textAlign: TextAlign.start,
                      text: TextSpan(text: this.gamestatus2,style: TextStyle(fontSize: 14,color: Colors.black,),children: <TextSpan>[
                        TextSpan(text: " M-L",style: TextStyle(fontSize: 14,color: Colors.black54,),),
                        TextSpan(text: "\n1G, 2A, 3 SOG",style: TextStyle(fontSize: 14,color: Colors.black54,),)
                      ]),
                    ),
                  ],
                ),
              ),
              Image(image: AssetImage(this.image),width: 60,height: 60,),
            ],
          )
        ],
      ),

    );
  }
}
