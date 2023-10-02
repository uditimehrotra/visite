// ignore: unused_import
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// ignore: unused_import
import 'package:flutter/material.dart';
// ignore: unused_import
import 'firstpage.dart';
import 'walkthrough.dart';



// ignore: camel_case_types
class choices extends StatefulWidget {
  const choices({super.key});

  @override
  State<choices> createState() => _choicesState();
}
// ignore: camel_case_types
class _choicesState extends State<choices> {
  int currentIndex=2;
  @override
  Widget build(BuildContext context) {
    return Container(
          alignment: Alignment.bottomCenter,
        decoration:const BoxDecoration(
          image: DecorationImage(
           image: AssetImage('images/background.png'),
           fit: BoxFit.cover,
           ),
        ),
          child: ( Container(
           width: 360,
           height: 250,
           //color: const  Color.fromARGB(207, 43, 48, 83),
           alignment: Alignment.bottomRight, 
           padding: const EdgeInsets.all(10),  
           margin: const EdgeInsets.all(5),

           decoration: BoxDecoration(  
            color: const Color.fromARGB(207, 43, 48, 83),
            borderRadius: BorderRadius.circular(35), 
          ),  
        child: Column(
          children: [

            const Padding(padding: EdgeInsets.all(6),child:Center(child: Text ("Select an option",  textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20,color: Colors.white70,)),)
           ),

           const Padding(
                padding: EdgeInsets.all(2.0),
                child: Divider(
                  color: Colors.white24,
                  height:4,
                ),
              ),
           
                SizedBox(
                  width: 360,
                  height: 50,
                child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(207, 43, 48, 83),
                foregroundColor: Colors.white70
              ) ,
                  onPressed: (){
                     Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                return const walkthrough();
               }));
                  }, child: const Text('Walk-throughs',style:TextStyle(fontSize: 20)),
                  ),
                  ),//
                const Padding(
              padding: EdgeInsets.only(top: 5)),
                SizedBox(
                  width: 360,
                  height: 50,
                child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(207, 43, 48, 83),
                foregroundColor: Colors.white70
              ) ,
                  onPressed: (){
                     Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                return const walkthrough();
               }));
                  }, child: const Text('3D Ar model',style:TextStyle(fontSize: 20)),
                  ),
                  )//
               




          ],
        ),






        )));
       



      

   
  }
}
