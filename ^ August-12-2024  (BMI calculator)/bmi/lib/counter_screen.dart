
import 'package:flutter/material.dart';
class CounterScreen extends StatefulWidget {
  CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter_n = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Counter"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                counter_n.toString(),
                style: TextStyle(
                  fontSize: 30
                ),
              ),

              Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton.small(
                    elevation: 0, //remove shadow when 0
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    onPressed: (){
                      setState(() {
                      counter_n--;
                        
                      });

                    }, 
                    child: const Icon(Icons.remove)),
                  const SizedBox(width: 20,),
                  FloatingActionButton.small(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    elevation: 0, //remove shadow when 0
                    onPressed: (){
                      setState(() {
                      counter_n++;
                        
                      });

                    }, 
                    child: const Icon(Icons.add)),
                ],
              )
            ]
            ),
        ),
      ),
    );
  }
}

