import 'package:bmicalculator/constants.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class mainPage extends StatefulWidget {
  const mainPage({super.key});

  @override
  State<mainPage> createState() => _mainPageState();
}

// ignore: camel_case_types
class _mainPageState extends State<mainPage> {
  int height = 20;
  int Weight = 30;

  late double bmiTotal = calculatorBMI(height: height, Weight: Weight);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child:  Container(
      color: Colors.white,
      child:   Column(
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
                      Text("$height", style: TextStyle(color: Color(0xFFFF8888),fontSize: 50,fontWeight: FontWeight.bold, 
                      )
                      ),
                      Row(children: [
                        SizedBox(width: 20),
                        FloatingActionButton(onPressed:(){
                          setState(() {
                          height--;
                          bmiTotal = calculatorBMI(height: height, Weight: Weight);  
                          });
                          
                        },
                          child: Icon(Icons.remove,
                          size: 40,
                          color: Colors.red,
                        ),
                        ),
                        SizedBox(width: 20),
                        FloatingActionButton(onPressed: (){
                          setState(() {
                          height++;
                          bmiTotal = calculatorBMI(height: height, Weight: Weight);  
                          });
                          
                        },
                        child: Icon(Icons.add,
                        size: 40,
                         color: Colors.blue,
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
                      Text("Weight"),
                      Text("$Weight", style: TextStyle(color: Color(0xFFFF8888),fontSize: 50,fontWeight: FontWeight.bold, 
                      )
                      ),
                      Row(children: [
                        SizedBox(width: 20),
                        FloatingActionButton(onPressed: (){
                          setState(() {
                          Weight--;
                          bmiTotal = calculatorBMI(height: height, Weight: Weight);  
                          });
                          
                        },
                        child: Icon(Icons.remove,
                        size: 40,
                        color: Colors.red,
                        ),
                        ),
                        SizedBox(width: 20),
                        FloatingActionButton(onPressed: (){
                          setState(() {
                          Weight++;
                          bmiTotal = calculatorBMI(height: height, Weight: Weight);  
                          });
                          
                        },
                        child: Icon(Icons.add,
                        size: 40,
                         color: Colors.blue,
                        ),
                        ),
                        
                      ],
                      ),
                      
                    ],
                  ),
                ),
                ],
              ),
              SizedBox(height: 50),
              Column(
                        children: [
                          Text("BMI", style: TextStyle(
                            color: ktextColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20 
                          ),
                           ),
                          Text("$bmiTotal",
                          style: TextStyle(
                            color: ktextColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 80
                          ),
                          )
                        ],
                      ),
          ],
        ),
    ),
    ) 
     
    );
     
    
  }

  double calculatorBMI({required height,required int Weight}){
        return Weight / (height* height);
  }


}