import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LotteryApp extends StatefulWidget {
  static const String id = "lottery";
  const LotteryApp({super.key});
  @override
  State<LotteryApp> createState() => _LotteryAppState();
}

class _LotteryAppState extends State<LotteryApp> {

  Random r = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: SafeArea(child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Lottery App",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
            ),
          ),
          backgroundColor: Colors.orange.shade900,
        ),
        body:  Center(
          child: x == 5 ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.grey.shade200,
                height: 200,
                width: 400,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.done,
                      color: Colors.green,
                      size: 40,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Lottery Number is 5!"),
                    Text("Congradulations! You have won the lottery")
                  ],
                ),
              )
            ],
          ) :
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.grey.shade200,
                height: 200,
                width: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.error,
                      color: Colors.red,
                      size: 40,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text("Lottery Number is 5!"),
                    Text("Lottery Number is $x, Better Luck Next time")
                  ],
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            x = r.nextInt(10);
            print(x.toString());
            setState(() {

            });
          },
          backgroundColor: Colors.orange.shade900,
          child: const Icon(Icons.refresh,
            color: Colors.white,),
        ),
      )),
    );
  }
}
