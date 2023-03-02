import 'package:flutter/material.dart';
import 'package:new_func/foodWidget.dart';
void main(){
  runApp(HomePage());
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List foods = [
    'Pizza',            
    'Burger',             
    'Chicken',               
    'Somsa',                    
    'Lagmon',                      
    'Barak',                         
    'Palov',                         
    'Perashki',                    
    'Lavash',                    
    'Frie',                    
    'Rice',                  
    'Shirguruch', 
  ];
  List<Widget> getFood(foods){
    List<Widget> foodList = [];
    for (var food in foods){
      foodList.add(
      foodWidget(food: food),
      );
    }
    return foodList;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(appBar: AppBar(title: Text('Food Menu')),
    body: Padding(padding: const EdgeInsets.all(8.0),
    
    child: ListView(children: getFood(foods)),),)
    
    ,);
  }
}