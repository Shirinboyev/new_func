import 'package:flutter/material.dart';
import 'package:new_func/PizzaPage.dart';
// import 'package:new_func/foodWidget.dart';
   Map data = {
    'Chicken':    {'time': '15', 'star':'4.5', 'cal':'350 cal'},
    'Pizza' :     {'time': '20', 'star':'3.5', 'cal':'300 cal'},
    'Burger':     {'time': '10', 'star':'2.5', 'cal':'350 cal'},
    'Somsa' :     {'time': '30', 'star':'5.0', 'cal':'400 cal'},
    'Lagmon':     {'time': '25', 'star':'5.5', 'cal':'300 cal'},
    'Barak':      {'time': '15', 'star':'6.0', 'cal':'500 cal'},
    'Palov':      {'time': '40', 'star':'7.0', 'cal':'600 cal'},
    'Perashki':   {'time': '10', 'star':'3.0', 'cal':'400 cal'},
    'Lavash':     {'time': '15', 'star':'4.0', 'cal':'350 cal'},
    'Frie':       {'time': '15', 'star':'4.0', 'cal':'300 cal'},
    'Rice':       {'time': '20', 'star':'6.0', 'cal':'400 cal'},
    'Shirguruch': {'time': '25', 'star':'5.5', 'cal':'500 cal'},
   };

class foodWidget extends StatelessWidget {
  final String food;
  const foodWidget({
    super.key,
    required this.food,
  });
  @override 
  Widget build(BuildContext context){
    return ListTile(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
      
       PizzaPage(name: food, data: data[food], img: Text('images${food}.png')),
      
      )),
      leading: CircleAvatar(backgroundImage: AssetImage('images/${food}.png')),
      title: Text(food, style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
              ),),
              subtitle: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Icon(Icons.access_time,
                size: 20,
                color: Colors.grey[300],
                ),
                Text(data[food]['time'],
                style: TextStyle(color: Colors.grey[400],),
                ),
                 Icon(Icons.star,
                 size: 20,
                 color: Colors.yellow[700],
                 ),
                 Text(data[food]['star'],
                 style: TextStyle(
                  color: Colors.yellow[700],
                 ),
                 ),
                 Icon(Icons.local_fire_department,
                 size: 20,
                 color: Colors.red[300],
                 ),
                 Text(data[food]['cal'],
                 style: TextStyle(
                  color: Colors.red[300],
                 ),
                 )
              ],),
              trailing: IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline,color: Colors.red,)),
    );
  }
}