// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'walkthrough.dart';
import 'globals.dart' as globals;

// ignore: camel_case_types
class firstpage extends StatefulWidget {
  const firstpage({super.key});

  @override
  State<firstpage> createState() => _firstpageState();
}



// ignore: camel_case_types
class _firstpageState extends State<firstpage> {
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

            Padding(padding: EdgeInsets.all(6),child:Center(child: Text ("Select an option",  textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20,color: Colors.white70,)),)
           ),

           Padding(
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
                     globals.page=0;
                      return const walkthrough();
               }));
                  }, child: Text('Walk-throughs',style:TextStyle(fontSize: 20)),
                  ),
                  ),//
                Padding(
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
                    globals.page=1;
                    return const walkthrough();
               }));
                  }, child: Text('3D Ar model',style:TextStyle(fontSize: 20)),
                  ),
                  )//


          ],
        ),


        ))):Container(
        alignment: Alignment.center,
        decoration:const BoxDecoration(
          image: DecorationImage(
           image: AssetImage('images/background.png'),
           fit: BoxFit.cover,
           ),
        ),
        )
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

    );
  }
}

