// ignore_for_file: depend_on_referenced_packages, duplicate_import, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:visite/Login.dart';
import 'firstpage.dart';
import 'package:visite/welcome.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';


Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    debugShowCheckedModeBanner: false,  
   
      home: Main() 
      
            
      );
    
    
  }
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State <Main> createState() =>  MainState();
}

class  MainState extends State <Main> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    Timer(
      const Duration(seconds: 5),
      ()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => const Welcome_page()))

    );
  }

 
  @override
  Widget build(BuildContext context) {
    return  Container(
        alignment: Alignment.center,
        decoration:const BoxDecoration(
          image: DecorationImage(
           image: AssetImage('assets/logo.png'),
           fit: BoxFit.cover,
           ),
        ),
        );
        
  }
}
/*final navigatorKey=GlobalKey<NavigatorState>();
class MyWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) => MaterialApp(
    navigatorKey: navigatorKey,
    home: StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context,snapshot)
      {
        if(snapshot.connectionState == ConnectionState.waiting)
        {
          return Center(child: CircularProgressIndicator(),);
        }
        else if(snapshot.hasError)
        {
          return Center(child: Text('Something went wrong'),);
        }
        if(snapshot.hasData)
        {
          return firstpage();
        }
        else{
          return Login();
        }
        

      }
       ),
    //scaffoldMessengerKey: Utils.messengerKey,

  );
}*/


  

