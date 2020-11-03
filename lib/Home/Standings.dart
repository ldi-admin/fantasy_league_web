import 'package:flutter/material.dart';

class standings extends StatefulWidget {
  @override
  _standingsState createState() => _standingsState();
}

class _standingsState extends State<standings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE7E2E1),
      body: Container(
        child: ListView.builder(itemBuilder:(context,index){
          return  PlacingsView(
            image: first[index].Image,
            place: first[index].place,
            Name: first[index].Name,
            Points: first[index].Points,
            score: first[index].score,
          );
        },
        itemCount: first.length,shrinkWrap: true,scrollDirection: Axis.vertical,),
      ),
    );
  }
}
class Placings{
  final String Image;
  final String score;
  final String Name;
  final String place;
  final String Points;
  Placings({this.place,this.Image,this.Points,this.score,this.Name});
}
class teams{
  final String Image;
  teams({this.Image});
}
List<Placings> first=[
  Placings(Image: "Assests/Images/logo1.png",Name: "Montreal\nARTISANS",place: "1st PLACE",score: "12-4-0",Points: "2081 PTS"),
  Placings(Image: "Assests/Images/logo2.png",Name: "Toronto\nCRAFTERS",place: "2nd PLACE",score: "11-5-0",Points: "1834 PTS"),
  Placings(Image: "Assests/Images/logo3.png",Name: "Los Angeles\nENTERTAINERS",place: "3rd PLACE",score: "9-7-0",Points: "1788 PTS"),
  Placings(Image: "Assests/Images/logo4.png",Name: "Paris\nSTORYTELLERS",place: "4th PLACE",score: "8-8-0",Points: "1549 PTS"),

];

class PlacingsView extends StatelessWidget {
  final image,place,Points,score,Name;
  PlacingsView({this.place,this.image,this.Points,this.score,this.Name});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Colors.white,
      margin: EdgeInsets.only(top: 8),
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(image: AssetImage(this.image),height: 60,width: 60,),
              Padding(
                padding: const EdgeInsets.only(left:10.0),
                child: Text(this.Name,style: TextStyle(letterSpacing: 1.7,fontWeight: FontWeight.bold,fontSize: 16),),
              )
            ],

          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
          Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
              border: Border(right: BorderSide(color: Colors.black26,style: BorderStyle.solid))
              ),
              child: Center(child: Text(this.score),),
            ),
              Container(
              width: 80,
                height: 50,
                padding: EdgeInsets.only(left: 5),
                decoration: BoxDecoration(
                    border: Border(right: BorderSide(color: Colors.black26,style: BorderStyle.solid))
                ),
                child: Center(child: Text(this.place),),
              ),
              Container(
                width:70,
                padding: EdgeInsets.only(left: 10),
                child: Center(child: Text(this.Points),),
              )
            ],
          )
        ],
      ),


    );
  }
}
