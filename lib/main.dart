import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Lottery.dart';
import 'dart:math';

import 'package:untitled/calculater.dart';
import 'package:untitled/wattsapp.dart';

void main() {
  runApp(MyApp());
}

// class practice extends StatelessWidget {
//   const practice({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return  MaterialApp(
//       home: Scaffold(
//           backgroundColor: Colors.grey.shade100,
//           appBar: AppBar(
//             backgroundColor: Colors.teal,
//             title: const Center(
//               child: Text("Hey I am back!"),
//             ),
//           ),
//           body: const Center(
//               child: Image(
//                   image: AssetImage("assets/12.jpeg"))
//           )),
//     );
//   }
// }
//-----------------------------------------------------------------
// class loginPage extends StatelessWidget {
//   const loginPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return  MaterialApp(
//       home: Scaffold(
//         body: Column(
//           children: [
//             const SizedBox(
//               height: 20,
//             ),
//             Center(
//               child: Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10)
//                 ),
//                 clipBehavior: Clip.hardEdge,
//                 height: 250,
//                 width: 450,
//                 child: const Image(
//                   image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnd_5sq4WGMnXD43TS4E9oIXJLh1g27feGYihRHB6u6aaeVRUKZ0JMxWRV8gVbjXNvO5E&usqp=CAU"),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             const Text("Login",
//             style: TextStyle(
//               fontSize: 30,
//               fontWeight: FontWeight.bold
//             ),),
//             const SizedBox(
//               height: 20,
//             ),
//           Padding(
//               padding: const EdgeInsets.only(left: 50, right: 50),
//           child: TextFormField(
//             decoration: InputDecoration(
//                 hintText: "Enter Name",
//                 focusedBorder: OutlineInputBorder(
//                   borderSide: const BorderSide(
//                     color: Colors.black,
//                   ),
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 enabledBorder: OutlineInputBorder(
//                     borderSide: const BorderSide(
//                       color: Colors.black,
//                     ),
//                     borderRadius: BorderRadius.circular(20)
//                 )
//             ),
//           ),),
//             Padding(
//               padding: const EdgeInsets.only(left: 50, right: 50, top: 20),
//               child: TextFormField(
//                 decoration: InputDecoration(
//                     hintText: "Enter Email",
//                     focusedBorder: OutlineInputBorder(
//                       borderSide: const BorderSide(
//                         color: Colors.black,
//                       ),
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     enabledBorder: OutlineInputBorder(
//                         borderSide: const BorderSide(
//                           color: Colors.black,
//                         ),
//                         borderRadius: BorderRadius.circular(20)
//                     )
//                 ),
//               ),),
//             Padding(
//               padding: const EdgeInsets.only(left: 50, right: 50, top: 20),
//               child: TextFormField(
//                 decoration: InputDecoration(
//                     hintText: "Enter Password",
//                     focusedBorder: OutlineInputBorder(
//                       borderSide: const BorderSide(
//                         color: Colors.black,
//                       ),
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     enabledBorder: OutlineInputBorder(
//                         borderSide: const BorderSide(
//                           color: Colors.black,
//                         ),
//                         borderRadius: BorderRadius.circular(20)
//                     )
//                 ),
//               ),),
//             const SizedBox(
//               height: 30,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(right: 50),
//                   child: Container(
//                     height: 40,
//                     width: 100,
//                     decoration: BoxDecoration(
//                       color: Colors.blue.shade900,
//                       borderRadius: BorderRadius.circular(20)
//                     ),
//                     child: const Center(
//                       child: Text(
//                         "Login",
//                         style: TextStyle(
//                           color: Colors.white
//                         ),
//                       ),
//                     ),
//                   ),
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
//--------------------------------------------

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
     initialRoute: calculater.id,
        routes: {
        calculater.id : (context) => calculater(),
        LotteryApp.id : (context) => LotteryApp(),
          wattsapp.id : (context) => wattsapp()
    },
    );
  }
}



