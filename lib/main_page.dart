import 'package:flutter/material.dart';

// ignore: camel_case_types
class mainPage extends StatefulWidget {
  const mainPage({super.key});

  @override
  State<mainPage> createState() => _mainPageState();
}

// ignore: camel_case_types
class _mainPageState extends State<mainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child:  Container(
      color: Colors.white,
      child:  const Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Icon(Icons.male, size: 150,),
                      Text("Male"),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Icon(Icons.female, size: 150,),
                      Text("FeeMale"),
                    ],
                  ),
                ),

              ],
            ),
            
             // ignore: unnecessary_const
              Row(
                children: [
                  Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Icon(Icons.male, size: 150,),
                      Text("Male"),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Icon(Icons.female, size: 150,),
                      Text("FeeMale"),
                    ],
                  ),
                ),
                ],
              )
          ],
          
          

      ),
    ),
    ) 
     
    );
     
    
  }
}