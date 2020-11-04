
import 'package:flutter/material.dart';

import 'PlayerDetail.dart';
import 'Points Distrubution.dart';

class ListsPlayer extends StatefulWidget {
  @override
  _ListsPlayerState createState() => _ListsPlayerState();
}

class _ListsPlayerState extends State<ListsPlayer> {
  int _value=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE7E2E1),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 370,
                  margin: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                            height:50,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           color: Colors.white,
                         ),
                         alignment: Alignment.center,
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.w400),
                      itemHeight: 50,
                    value: _value,
                    items: [
                      DropdownMenuItem(
                        child: Text("STATS TODAY",textAlign: TextAlign.end),
                        value: 1,
                      ),
                      DropdownMenuItem(
                          child: Text("STATS THIS WEEK"),
                          value: 2
                      ),
                      DropdownMenuItem(
                        child: Text("STATS THIS MONTH"),
                        value: 3,
                      ),
                      DropdownMenuItem(
                          child: Text("STATS THIS YEAR"),
                          value: 4
                      ),

                    ],
                    isExpanded: true,
                    isDense: true,
                    onChanged: (value) {
                      setState(() {
                        _value = value;
                      });
                    }),
                  ),padding: EdgeInsets.symmetric(horizontal: 10),
                ),
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(image:AssetImage("Assests/Images/bt_secondary.png",),fit: BoxFit.contain,)
                  ),
                  width:370,
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: 27),
                  child: FlatButton(

                    onPressed: (){
                      Navigator.push(context, ScaleRoute(page: PointsDistribution()));
                    },
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(left: 30,top: 15,bottom: 20),
              child: Text("FORWARDS"),
            ),
            Container(
              child: ListView.builder(itemBuilder: (context,index){return PlayerCard(
                Name: forward[index].name,
                Photo: forward[index].Photo,
                Score: forward[index].score,
              );
              },itemCount: forward.length,shrinkWrap: true,physics: NeverScrollableScrollPhysics(),

              ),

            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,top: 20,bottom: 15),
              child: Text("DEFENCE MEN"),
            ),
            Container(
              child: ListView.builder(itemBuilder: (context,index){return PlayerCard(
                Name: defence[index].name,
                Photo: defence[index].Photo,
                Score: defence[index].score,
              );
              },itemCount: defence.length,shrinkWrap: true,physics: NeverScrollableScrollPhysics(),

              ),

            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,top: 20,bottom: 15),
              child: Text("GOALTENDERS"),
            ),
            Container(
              child: ListView.builder(itemBuilder: (context,index){return PlayerCard(
                Name: goal[index].name,
                Photo: goal[index].Photo,
                Score: goal[index].score,
              );
              },itemCount: goal.length,shrinkWrap: true,physics: NeverScrollableScrollPhysics(),

              ),

            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,top: 20,bottom: 15),
              child: Text("BENCH"),
            ),
            Container(
              child: ListView.builder(itemBuilder: (context,index){return PlayerCard(
                Name: bench[index].name,
                Photo: bench[index].Photo,
                Score: bench[index].score,
              );
              },itemCount: bench.length,shrinkWrap: true,physics: NeverScrollableScrollPhysics(),

              ),
            )
            ]
        )
      )
    );
  }
}

// ignore: camel_case_types
class PlayerCard extends StatelessWidget {
  final Name, Photo, Score;
  PlayerCard({this.Photo,this.Name,this.Score});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
       // Navigator.push(context, ScaleRoute(page: PlayerProfile()));
      },
      child: Container(
          color: Colors.white,
        height:100,
        margin: EdgeInsets.only(top:10,),
        padding: EdgeInsets.symmetric(horizontal: 15),

        child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:2),
                  child: Image(image: AssetImage(this.Photo),width: 50,height: 50,fit: BoxFit.cover,),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:10.0),
                  child: RichText(textAlign: TextAlign.start,
                    text: TextSpan(text: this.Name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.black),children: <TextSpan>[
                      TextSpan(text: "\n1st ",style: TextStyle(fontSize: 14,color: Colors.black,),),
                      TextSpan(text: " 14.33 ",style: TextStyle(fontSize: 14,color: Colors.black,),),
                      TextSpan(text: " MTL vs LA",style: TextStyle(fontSize: 14,color: Colors.black54,),),
                      TextSpan(text: "\n1G, 2A, 3 SOG",style: TextStyle(fontSize: 14,color: Colors.black54,),)
                    ]),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 69),
              height: 60,
              width: 60,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0),
                color: Colors.black,
              ),

              child: Center(child: Text(this.Score,style: TextStyle(color: Colors.white,fontSize: 20),)),
            )
          ],
        ),
      ),
    );
  }
}
class ScaleRoute extends PageRouteBuilder {
  final Widget page;
  ScaleRoute({this.page})
      : super(
    pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        ) =>
    page,
    transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
        ) =>
        ScaleTransition(
          scale: Tween<double>(
            begin: 0.0,
            end: 1.0,
          ).animate(
            CurvedAnimation(
              parent: animation,
              curve: Curves.fastOutSlowIn,
            ),
          ),
          child: child,
        ),
  );
}