import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Create an Account',
          style: TextStyle(
            fontSize: 32,
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
            Text('First Name', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter First Name',
                border: OutlineInputBorder(),
              ),
            ),

          SizedBox(height: 16),

           Text('Last Name', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
           ),
           TextField(
            decoration: InputDecoration(
              hintText: 'Enter Last Name',
              border: OutlineInputBorder(),
            ),
           ),

          SizedBox(height: 16),

           Text('Email', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
           ),
           TextField(
            decoration: InputDecoration(
              hintText: 'Enter Email',
              border: OutlineInputBorder(),
            ),
           ),

          SizedBox(height: 16),

           Text('Set Password', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
           ) ,
           TextField(
            decoration: InputDecoration(
              hintText: 'Set Password',
              border: OutlineInputBorder(),
            ),
           ),

          SizedBox(height: 16),

           Text('Confirm Password', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
           ),
           TextField(
            decoration: InputDecoration(
              hintText: 'Confirm Password',
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
              child: Text('Register', style: TextStyle(fontSize:  16, fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}