import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ID_Card()
  ));
}

class ID_Card extends StatefulWidget {
  const ID_Card({Key? key}) : super(key: key);

  @override
  State<ID_Card> createState() => _ID_CardState();
}

class _ID_CardState extends State<ID_Card> {
  int age = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        centerTitle: true,
        title: Text("Identity Card"),
        backgroundColor: Colors.black,
      ),
      body:
          Column(
        children:[
          Container(
            padding: EdgeInsets.all(80),
            child: Image.asset("asset/pngegg.png"),
          ),
          Expanded(
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Name: ",style: TextStyle(fontSize: 17,color:Colors.white,fontWeight: FontWeight.bold),),
                  Text("Soham Singhal",style: TextStyle(fontSize: 17,fontWeight:FontWeight.bold,color:Colors.white,decoration: TextDecoration.underline,decorationThickness: 2,),)
                ],
              )
          ),
          Expanded(
              child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text("Age: ",style: TextStyle(fontSize: 17,color:Colors.white,fontWeight: FontWeight.bold),),
    Text("$age",style: TextStyle(fontSize: 17,fontWeight:FontWeight.bold,color:Colors.white,decoration: TextDecoration.underline,decorationThickness: 2,),)
    ],
    )
          ),
           Expanded(
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(Icons.mail,color: Colors.white,),
    Text(": ",style: TextStyle(color:Colors.white),),
    Text("sohamsinghal@email.com",style: TextStyle(fontSize: 17,fontWeight:FontWeight.bold,color:Colors.white,decoration: TextDecoration.underline,decorationThickness: 2,),)
    ],
                )
           ),
          Expanded(
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.phone,color: Colors.white,),
                  Text(": ",style: TextStyle(color:Colors.white),),
                  Text("+123456789",style: TextStyle(fontSize: 17,fontWeight:FontWeight.bold,color:Colors.white,decoration: TextDecoration.underline,decorationThickness: 2,),)
                ],
              )
          ),
        ]
    ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState((){
                age++;
              });
            },
            child:Icon(Icons.add),
            backgroundColor: Colors.grey[900],
            mini:true,
          ),
          FloatingActionButton(
            onPressed: () {
            setState((){
            age--;
            if(age<0){age = 0;}
            });
            },
            child:Icon(Icons.remove),
            backgroundColor: Colors.grey[900],
            mini:true,
      ),]
    ),
    );
  }
}
