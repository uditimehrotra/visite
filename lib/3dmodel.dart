// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'backoption.dart';
import 'globals.dart' as globals;

class model extends StatefulWidget {
  const model({super.key});

  @override
  State<model> createState() => _modelState();
}

class _modelState extends State<model> {
  int currentIndex=2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child: currentIndex==1? Container(
        alignment: Alignment.center,
        decoration:const BoxDecoration(
          image: DecorationImage(
           image: AssetImage('images/background.png'),
           fit: BoxFit.cover,
           ),
        ),
        ):currentIndex==2? Container(
          alignment: Alignment.bottomCenter,
        decoration:const BoxDecoration(
          image: DecorationImage(
           image: AssetImage('images/background.png'),
           fit: BoxFit.cover,
           ),
        ),
          child: ( Container(
           width: 360,
           height: 300,
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

            const Padding(padding: EdgeInsets.all(6),child:Center(child: Text ("Select a Department",  textAlign: TextAlign.center,
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
               
                  onPressed: (){},
                  child: const Text('Entire Department',style:TextStyle(fontSize: 20)),
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
               
                  onPressed: (){},
                  child: const Text('Classroom',style:TextStyle(fontSize: 20)),
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
                  onPressed: (){}, child: const Text('lab',style:TextStyle(fontSize: 20)),
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
                  onPressed: (){}, child: const Text('office',style:TextStyle(fontSize: 20)),
                  ),
                  ),




          ],
        ),






        ))): const choices()
      ),

        bottomNavigationBar: CurvedNavigationBar(
          
           
          backgroundColor: const Color.fromARGB(255, 10, 12, 20),
          buttonBackgroundColor: const Color.fromARGB(249, 8, 8, 14),
          color: const Color.fromARGB(251, 20, 22, 40),
          animationDuration: const Duration(milliseconds: 300),
          items: const [
            
            Icon(
              Icons.navigate_before,
              color: Colors.white60,
              size: 40,
            ),
            
            Icon(Icons.add_home_rounded,
            color: Colors.white60,
            size:40,
             ),
           

            Icon(
              Icons.list,
              color: Colors.white60,
               size:40,
              
            ),

          ],
        onTap: ((int index) {
          setState(() {
            currentIndex=index;
          });
          
        }),

        ),
    );;
  }
}