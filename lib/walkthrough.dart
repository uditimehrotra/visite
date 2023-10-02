import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'backoption.dart';
import 'globals.dart' as globals;
import 'actualwalkthrough.dart';
import '3dmodel.dart';



// ignore: camel_case_types
class walkthrough extends StatefulWidget {
  const walkthrough({super.key});

  @override
  State<walkthrough> createState() => _walkthroughState();
}

// ignore: camel_case_types
class _walkthroughState extends State<walkthrough> {
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
            
                  onPressed: (){globals.page==0? (
                   Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                   
                    return const actualwalkthrough();
               }))):Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                     //globals.page==0?actualwalkthrough():model()
                    return const model();
               }));

                  }, 
                  
                  child: const Text('Surya Mandir',style:TextStyle(fontSize: 20)),
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
                  onPressed: (){}, child: const Text('Aim and Act',style:TextStyle(fontSize: 20)),
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
                  onPressed: (){}, child: const Text('AI Center',style:TextStyle(fontSize: 20)),
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
    );
  }

}