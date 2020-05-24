import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState()=>_HomeState();
}

class _HomeState extends State<Home> {
  bool isAuth=false;

   Widget buildAuthScreen(){
    return Text('hello home');
  }

  Scaffold buildunAuthScreen(){
    return Scaffold(body:Container(
      decoration: BoxDecoration(
        gradient:LinearGradient(
          begin:Alignment.topRight,
          end:Alignment.bottomLeft,
          colors:[Colors.teal,Colors.purple]
        )
      ),
      alignment: Alignment.center,
      child:Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children :<Widget>[
        Text('Yerokstagram',style:TextStyle(
          fontFamily: "Signatra",
          fontSize: 50.0,
          color: Colors.red,
        ),
        ),
        
        GestureDetector(
          onTap:()=>print('clicked'),
          child:Container(
            width:260.0,
            height: 60.0,
            
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/login.png'
                ),
               
                fit:BoxFit.cover
                )
            ),
            )
        ),
      ],
    ) ,
    ),
    );
  }
  @override

 Widget build(BuildContext context) {
   return isAuth ? buildAuthScreen() : buildunAuthScreen();
 }
}