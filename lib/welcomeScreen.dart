import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/screens/home/home_screen.dart';
class WelcomeScreen extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
     return Material(
      
    child: Container(
      padding: EdgeInsets.only(top: 100 , bottom: 40),
      decoration: BoxDecoration(
        color: Colors.white, 
        image:DecorationImage(image: AssetImage("assets/images/bac4.jpg"), fit: BoxFit.cover , opacity: 0.6)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("clothes shop" , style: TextStyle(fontSize: 50 , fontWeight: FontWeight.bold , fontStyle: FontStyle.italic,
          color:primaryColor),),
          Column(children: [
            Text("Feeling Happy? , Shoping Now" ,style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500 , letterSpacing: 1 ,
            ),), 
            SizedBox(height: 13,), 
            InkWell(
              splashColor: Colors.black,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            
                child: Container(
                padding: EdgeInsets.symmetric(vertical: 15 , horizontal: 50),
                decoration: BoxDecoration(color: primaryColor , borderRadius: BorderRadius.circular(10)),
                child: Text(
                  "Get Start" , style: TextStyle(color:Colors.white , fontSize: 22 , fontWeight: FontWeight.bold,
                  letterSpacing: 1),
                ),
              ),
            )
          ],)
        ],
      ),
    ),
    );
  }
}