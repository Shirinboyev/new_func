import 'package:flutter/material.dart';
import 'package:new_func/main.dart';

class PizzaPage extends StatefulWidget {
  final String name;
  final Map data;
  final Widget img;
  const PizzaPage({super.key,required this.name, required this.data, required this.img});

  @override
  State<PizzaPage> createState() => _PizzaPageState();
}

class _PizzaPageState extends State<PizzaPage> {

  @override
  Widget build(BuildContext context) {
    print(widget.name);
    print(widget.data);
    return MaterialApp(
      home:  Scaffold(appBar: AppBar(title: Row(
      
        children: [
          IconButton(onPressed: (){
              Navigator.of(context).pop(MaterialPageRoute(builder: ((context) => HomePage())));
            }, icon: const Icon(Icons.arrow_back)),
          Text(widget.name),
        ],
      ),),
      body: Column(children: [
        Image.asset('images/Pizza.png'),

      ],),
      ));
  }
}