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
                      Text("Height"),
                      Text("176", style: TextStyle(color: Color(0xFFFF8888),fontSize: 50,fontWeight: FontWeight.bold, 
                      )
                      ),
                      Row(children: [
                        FloatingActionButton(onPressed: null,child: Icon(Icons.remove,size: 40,color: Colors.red,
                        ),
                        ),
                        FloatingActionButton(onPressed: null,child: Icon(Icons.add,size: 40, color: Colors.blue,
                        ),
                        ),
                        
                      ],
                      ),
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