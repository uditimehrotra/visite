import 'package:flutter/material.dart';

import 'package:visite/welcome.dart';
import 'package:flutter/gestures.dart';
import 'package:visite/Background.dart';
import 'package:visite/Login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:email_validator/email_validator.dart';

class Sign_up extends StatefulWidget {
  
  @override
  State<Sign_up> createState() => _Sign_upState();
}

class _Sign_upState extends State<Sign_up> {
  final _auth=FirebaseAuth.instance;
  bool _validate=false;

  //string to display error message
  

  // our form key
  final _formKey = new GlobalKey<FormState>();
   final auth = FirebaseAuth.instance;

  //editing controller
  
  
  
 
  

  //final TextEditingController _confirmcontroller=TextEditingController();

  @override

  Widget build(BuildContext context) {
    final TextEditingController _emailcontroller=TextEditingController();

  final TextEditingController _passcontroller=TextEditingController();
     
     void register() async {
      FirebaseAuth auth = FirebaseAuth.instance;
      FirebaseFirestore db = FirebaseFirestore.instance;

      
      final String email = _emailcontroller.text;
      final String password = _passcontroller.text;
      

      try {
        final UserCredential user = await auth.createUserWithEmailAndPassword(
            email: email, password: password);

        await db.collection('user').doc(user.user!.uid).set({
          "email": email,
         
        });

        print('User is now registered');
      } catch (e) {
        print('Error');
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                content: Text("$e"),
              );
            });
      }
    }



    return Stack(
      children: [
        background(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Form(
            key:_formKey,
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                children: <Widget> [
                 

                  InkWell(                    
                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>const Welcome_page()));},
                    child: Container(
                     alignment: Alignment.topLeft,
                      padding: EdgeInsets.fromLTRB(20, 30, 0, 0),
                      child: const Icon(Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 30,
                      ),
                    )
                  ),           

                  Container(
                    padding: EdgeInsets.fromLTRB(40, 10, 0, 50),
                    
                    alignment: Alignment.topLeft,
                    child: const Text('Sign Up',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold)
                    ),
                    ),
                  
                  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  
                  child: Column(
                    children: <Widget>
                    [
                 
                  TextFormField(
                    controller: _emailcontroller,
                    cursorColor: Colors.white,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(labelText: 'Email'),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value)=>
                    value != null && !EmailValidator.validate(value)
                    ? 'enter valid email'
                    : null,
                  ),

                  SizedBox(
                    height: 10,
                  ),
                 

                  TextFormField(
                    controller: _passcontroller,
                    cursorColor: Colors.white,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(labelText: 'Password'),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    obscureText: true,
                    validator: (value)=>
                    value != null && value.length<6
                    ? 'enter valid email'
                    : null,
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: ElevatedButton(
                            onPressed: register,
                            style: ElevatedButton.styleFrom(
                                primary: Colors.teal[300],
                                onPrimary: Colors.deepOrangeAccent[50],
                                onSurface: Colors.deepPurple,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 50, vertical: 20),
                                textStyle: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                            child: Text(
                              'SignUp',
                            ),
                          ),)
                ],             
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account ?',
                    style: TextStyle(
                    color: Colors.white,
                    fontSize: 15
                    
                  )),
                  GestureDetector(
                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));} ,
                    child: Text('Login',
                    style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    
                  )),
                  )
                  ],
                )
                
                
                
                        ],
                      ),
                    )
                  
          ),
        ),
  
                      ],
                    
                  
                
              
            
      
    );
        
   
    


    //navigatorKey.currentState!.popUntil;{(route)=>route.isFirst(); }

  }  
  
}

