import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign in',
          style: TextStyle(
            fontSize:40,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ 
           Text('Email', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
           ),
           TextField(
            decoration: InputDecoration(
              hintText: 'Enter Email',
              border: OutlineInputBorder(),
            ),
           ),

          SizedBox(height: 16),

          Text('Password', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
           ),
           TextField(
            decoration: InputDecoration(
              hintText: 'Enter Password',
              border: OutlineInputBorder(),
            ),
           ),


          SizedBox(height: 16),

          Center(
           child: ElevatedButton(
            onPressed: () => {}, 
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purpleAccent,
              foregroundColor: Colors.white,
              fixedSize: Size(200, 50),
              ),
              child: Text('Login', style: TextStyle(fontSize:  16, fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

