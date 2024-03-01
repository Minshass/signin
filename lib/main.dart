import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
      appBar: AppBar(leading: BackButton(
        onPressed: () => Navigator.of(context).pop(),
      ),
        backgroundColor: Colors.white,
        title: Text('Sign in',style: TextStyle(
          fontSize: 30,color: Colors.red,fontWeight: FontWeight.bold),
        ),),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),


        child:Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          obscureText: false,
          decoration: InputDecoration(
    border: OutlineInputBorder(),
     labelText: 'Email address'
    ),
        ),
        SizedBox(height: 15),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'password'
          ),
        ),
        SizedBox(height: 30),
        ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.red,fixedSize: Size(300,50)),
          onPressed: () {},
          child:  Text('login',style: TextStyle(fontSize: 20,color: Colors.white),),
        ),
        Text('or',style: TextStyle(fontSize: 20),),
        ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.blue,fixedSize: Size(300,50)),
        onPressed: (){},
        child:  Text('facebook login',style: TextStyle(fontSize: 20,color: Colors.white),)
        )
      ],
      ),
      ))
    );
  }
}

